'use strict';

const { sanitizeEntity } = require("strapi-utils")
const orderTemplate = require('../../../config/email-templates/order')
const stripe = require('stripe')(process.env.STRIPE_PRIVATE_KEY)

module.exports = {
  createPaymentIntent: async (ctx) => {
    const { cart } = ctx.request.body

    const cartGamesIds = await strapi.config.functions.cart.cartGamesIds(cart)

    // get games
    const games = await strapi.config.functions.cart.cartItems(cartGamesIds)

    if (!games.length) {
      ctx.response.status = 404

      return {
        error: "No valid games found!"
      }
    }

    const total = await strapi.config.functions.cart.total(games)

    if (total === 0) {
      return {
        freeGames: true
      }
    }

    try {
      const paymentIntent = await stripe.paymentIntents.create({
        // WATCH HERE
        amount: total,
        currency: 'usd',
        metadata: { cart: JSON.stringify(cartGamesIds) }
      })

      return paymentIntent
    } catch (err) {
      return {
        error: err.raw.message
      }
    }
  },

  create: async (ctx) => {
    // get frontend info
    const { cart, paymentIntentId, paymentMethod } = ctx.request.body

    // get user
    const token = await strapi.plugins["users-permissions"].services.jwt.getToken(ctx)
    const userId = token.id
    const userInfo = await strapi.query("user", "users-permissions").findOne({ id: userId })

    //get games
    const cartGamesIds = await strapi.config.functions.cart.cartGamesIds(cart)
    const games = await strapi.config.functions.cart.cartItems(cartGamesIds)

    // get total
    const total_in_cents = await strapi.config.functions.cart.total(games)

    // get paymentMethod
    let paymentInfo
    if (total_in_cents !== 0) {
      try {
        paymentInfo = await stripe.paymentMethods.retrieve(paymentMethod)
      } catch (err) {
        ctx.response.status = 402
        return { error: err.message }
      }
    }

    // store in DB
    const entry = {
      total_in_cents,
      payment_intent_id: paymentIntentId,
      card_brand: paymentInfo?.card?.brand,
      card_last4: paymentInfo?.card?.last4,
      user: userInfo,
      games
    }

    const entity = await strapi.services.order.create(entry)

    // send a email
    await strapi.plugins["email-designer"].services.email.sendTemplatedEmail(
    {
      to: userInfo.email,
      from: 'noreply@wongames.com'
    },
    {
      templateId: 1,
    },
    {
      user: userInfo,
      payment: {
        total: `$ ${total_in_cents / 100}`,
        card_brand: entry.card_brand,
        card_last4: entry.card_last4,
      },
      games
    })

    return sanitizeEntity(entity, { model: strapi.models.order })
  }
};

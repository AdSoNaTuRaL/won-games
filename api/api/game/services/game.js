'use strict';

/**
 * Read the documentation (https://strapi.io/documentation/developer-docs/latest/development/backend-customization.html#core-services)
 * to customize this service
 */

const axios = require('axios');
const slugify = require('slugify');

async function getGameInfo(slug) {
  const jsdom = require('jsdom');

  const { JSDOM } = jsdom;
  const body = await axios.get(`https://www.gog.com/game/${slug}`);
  const dom = new JSDOM(body.data);

  const description = dom.window.document.querySelector('.description');

  return {
    rating: 'Free',
    short_description: description.textContent.trim().slice(0, 160),
    description: description.innerHTML,
  };
}

module.exports = {
  populate: async (params) => {
    const gogAPIURL = 'https://www.gog.com/games/ajax/filtered?mediaType=game&page=1&sort=popularit';

    const {
      data: { products },
    } = await axios.get(gogAPIURL);

    console.log(products[0]);

    await strapi.services.publisher.create({
      name: products[0].publisher,
      slug: slugify(products[0].publisher).toLowerCase(),
    })

    await strapi.services.developer.create({
      name: products[0].developer,
      slug: slugify(products[0].developer).toLowerCase(),
    })
  }
};

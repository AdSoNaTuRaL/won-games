/// <reference path="../support/index.d.ts" />

describe('Game Page', () => {
  before(() => {
    cy.visit('/game/control-ultimate-edition')
    cy.wait(5000)
  })

  it('should render game page sections', () => {
    cy.getByDataCy('game-info').should('exist').within(() => {
      cy.findByRole('heading', { name: /control ultimate edition/i }).should('exist')
      cy.findByText(/Control Ultimate Edition contains the main game/i).should('exist')
      cy.findByText(/free/i).should('exist')
      cy.findByRole('button', { name: /add to cart/i }).should('exist')
    })

    // Gallery
    cy.findAllByRole('button', { name: /thumb \-/i }).should('have.length.gt', 0)

    // Content
    cy.getByDataCy('content').within(() => {
      cy.findByRole('heading', { name: /description/i }).should('exist')
    })

    cy.getByDataCy('content').children().should('have.length.at.least', 2)

    // Game details
    cy.getByDataCy('game-details').within(() => {
      cy.findByRole('heading', { name: /game details/i }).should('exist')
      cy.findByRole('heading', { name: /developer/i }).should('exist')
      cy.findByRole('heading', { name: /release date/i }).should('exist')
      cy.findByRole('heading', { name: /platforms/i }).should('exist')
      cy.findByRole('heading', { name: /publisher/i }).should('exist')
      cy.findByRole('heading', { name: /rating/i }).should('exist')
      cy.findByRole('heading', { name: /genres/i }).should('exist')

      cy.findByText(/Remedy Entertainment/i).should('exist')
      cy.findByText(/Sep 8, 2020/i).should('exist')
      cy.findByRole('img', { name: /windows/i }).should('exist')
      cy.findByText(/505 Games/i).should('exist')
      cy.findByText(/FREE/i).should('exist')
      cy.findByText(/Adventure \/ Action \/ Sci-fi/i).should('exist')
    })

    cy.shouldRenderShowcase({ name: "Upcoming games", highlight: true })
    cy.shouldRenderShowcase({ name: "You may like these games", highlight: false })
  })

  it('should add/remove game in cart', () => {
    // Add
    cy.getByDataCy('game-info').within(() => {
      cy.findByRole('button', { name: /add to cart/i }).click()

      cy.findByRole('button', { name: /remove from cart/i }).should('exist')
    })

    cy.findAllByLabelText(/cart items/i)
      .first()
      .should('have.text', 1)
      .click()

    cy.getByDataCy('cart-list').within(() => {
      cy.findByRole('heading', { name: /control ultimate edition/i }).should('exist')
    })

    // Remove
    cy.findAllByLabelText(/cart items/i)
      .first()
      .click()

    cy.getByDataCy('game-info').within(() => {
      cy.findByRole('button', { name: /remove from cart/i }).click()

      cy.findByRole('button', { name: /add to cart/i }).should('exist')
    })

    cy.findAllByLabelText(/cart items/i).should('not.exist')
  })
})

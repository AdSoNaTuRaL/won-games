/// <reference types="cypress" />

type ShowcaseAttributes = {
  name: string
  highlight?: boolean
}

type User = {
  username: string
  email: string
  password: string
}

declare namespace Cypress {
  interface Chainable {
    /**
     * Custom command to get element by data-cy values
     * @example cy.getByDataCy('selector')
     */
    getByDataCy(selector: string): Chainable<JQuery<HTMLElement>>

    /**
     * Custom command to check banner in page
     * @example cy.shouldRenderBanner()
     */
    shouldRenderBanner(): Chainable<Element>

    /**
     * Custom command to check showcase in page
     * @example cy.shouldRenderShowcase()
     */
    shouldRenderShowcase(attrs: ShowcaseAttributes): Chainable<Element>

    /**
     * Custom command to check fields in page
     * @example cy.getFields('fields')
     */
    getFields(fields: Array<{label: string, name: string | number}>): Chainable<Element>

    /**
     * Custom command to check if value is greater than given value
     * @example cy.shouldBeGreaterThan(50)
     */
    shouldBeGreaterThan(value: number): Chainable<Element>

    /**
     * Custom command to check if value is less than given value
     * @example cy.shouldBeLessThan(10)
     */
    shouldBeLessThan(value: number): Chainable<Element>

    /**
     * Custom command to sign up the user
     * @example cy.signUp(user)
     */
    signUp(user: User): Chainable<Element>

    /**
     * Custom command to sign in the user
     * @example cy.signIn(user)
     * @example cy.signIn()
     */
    signIn(email?: string, password?: string): Chainable<Element>

    /**
     * Custom command to add to cart by index
     * @example cy.addToCartByIndex(1)
     */
     addToCartByIndex(index: number): Chainable<Element>

     /**
     * Custom command to remove from cart by index
     * @example cy.removeFromCartByIndex(1)
     */
      removeFromCartByIndex(index: number): Chainable<Element>
  }
}

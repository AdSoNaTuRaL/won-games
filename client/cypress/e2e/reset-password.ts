/// <reference path="../support/index.d.ts" />

describe('Reset Password', () => {
  it('should show error if passwords does not match', () => {
    cy.visit('/reset-password?code=1324654654654564')

    cy.findByPlaceholderText(/^password/i).type('123456789')
    cy.findByPlaceholderText(/confirm password/i).type('987654321')
    cy.findByRole('button', { name: /reset password/i }).click()

    cy.findByText(/confirm password does not match/i).should('exist')
  })

  it('should show error if code is not valid', () => {
    cy.intercept('POST', '**/auth/reset-password', (res) => {
      res.reply({
        status: 400,
        body: {
          error: 'Bad Request',
          message: [
            {
              messages: [
                {
                  message: 'Incorrect code provided'
                }
              ]
            }
          ]
        }
      })
    })

    cy.visit('/reset-password?code=wrong_code')

    cy.findByPlaceholderText(/^password/i).type('123456789')
    cy.findByPlaceholderText(/confirm password/i).type('123456789')
    cy.findByRole('button', { name: /reset password/i }).click()

    cy.findByText(/incorrect code provided/i).should('exist')
  })

  it('should fill the input and redirect to the home page with user signed in', () => {
    cy.intercept('POST', '**/auth/reset-password', {
      statusCode: 200,
      body: { user: { email: 'cypress@cypress.com' }}
    })

    cy.intercept('POST', '**/auth/callback/credentials*', {
      statusCode: 200,
      body: { user: { email: 'cypress@cypress.com' }}
    })

    cy.intercept('GET', '**/auth/session', {
      statusCode: 200,
      body: { user: { name: 'cypress', email: 'cypress@cypress.com' }}
    })

    cy.visit('/reset-password?code=valid_token')

    cy.findByPlaceholderText(/^password/i).type('123456789')
    cy.findByPlaceholderText(/confirm password/i).type('123456789')
    cy.findByRole('button', { name: /reset password/i }).click()

    cy.url().should('eq', `${Cypress.config().baseUrl}/`)

    cy.findByText(/cypress/i).should('exist')
  })
})

/// <reference path="../support/index.d.ts" />

describe('Forgot Password', () => {
  it('should fill the email input and receive a success message', () => {
    cy.intercept('POST', '**/auth/forgot-password', (res) => {
      res.reply({
        status: 200,
        body: { ok: true }
      })

      expect(res.body.email).to.eq('cy@cy.com')
    })

    cy.visit('/forgot-password')

    cy.findAllByPlaceholderText(/e-mail/i).type('cy@cy.com')
    cy.findByRole('button', { name: /send e-mail/i }).click()

    cy.findByText(/Check your e-mail inbox!/i).should('exist')
  })

  it('should fill the email input with invalid email and receive a error message', () => {
    cy.intercept('POST', '**/auth/forgot-password', (res) => {
      res.reply({
        status: 400,
        body: {
          error: 'Bad Request',
          message: [
            {
              messages: [
                {
                  message: 'This email does not exist'
                }
              ]
            }
          ]
        }
      })
    })

    cy.visit('/forgot-password')

    cy.findAllByPlaceholderText(/e-mail/i).type('cy@cy.com')
    cy.findByRole('button', { name: /send e-mail/i }).click()

    cy.findByText(/This email does not exist/i).should('exist')
  })
})

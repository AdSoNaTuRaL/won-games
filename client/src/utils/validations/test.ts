import { signInValidation, signUpValidation } from '.'

describe('validations', () => {
  describe('signInValidation()', () => {
    it('should validate empty fields', () => {
      const values = { email: '', password: '' }

      expect(signInValidation(values)).toMatchObject({
        email: '"email" is not allowed to be empty',
        password: '"password" is not allowed to be empty'
      })
    })

    it('should return invalid email error', () => {
      const values = { email: 'invalidemail', password: '123456789' }

      expect(signInValidation(values).email).toMatchInlineSnapshot(
        `"\\"email\\" must be a valid email"`
      )
    })

    it('should return invalid password', () => {
      const values = { email: 'validemail@email.com', password: '1234' }
      expect(signInValidation(values).password).toMatchInlineSnapshot(
        `"\\"password\\" length must be at least 8 characters long"`
      )
    })
  })

  describe('signUpValidation()', () => {
    it('should validate empty fields', () => {
      const values = { username: '', email: '', password: '' }

      expect(signUpValidation(values)).toMatchObject({
        username: expect.any(String),
        email: expect.any(String),
        password: expect.any(String),
        confirm_password: expect.any(String)
      })
    })

    it('should return short username error', () => {
      const values = {
        username: 'ads',
        email: 'validemail@email.com',
        password: '12345678',
        confirm_password: '12345678'
      }

      expect(signUpValidation(values).username).toMatchInlineSnapshot(
        `"\\"username\\" length must be at least 5 characters long"`
      )
    })

    it('should return invalid email error', () => {
      const values = { email: 'invalidemail', password: '123456789' }

      expect(signUpValidation(values).email).toMatchInlineSnapshot(
        `"\\"email\\" must be a valid email"`
      )
    })

    it('should return unMatch passwords error', () => {
      const values = {
        username: 'adsonatural',
        email: 'validemail@email.com',
        password: '12345678',
        confirm_password: '987654321'
      }

      expect(signUpValidation(values)).toMatchInlineSnapshot(`
        Object {
          "confirm_password": "confirm password does not match",
        }
      `)
    })
  })
})

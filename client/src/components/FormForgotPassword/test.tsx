import 'server.mock'
import userEvent from '@testing-library/user-event'
import { render, screen } from 'utils/test-utils'

import FormForgotPassword from '.'

// eslint-disable-next-line @typescript-eslint/no-var-requires
const useRouter = jest.spyOn(require('next/router'), 'useRouter')
let query = {}

useRouter.mockImplementation(() => ({
  query
}))

describe('<FormForgotPassword />', () => {
  it('should render the form ', () => {
    render(<FormForgotPassword />)

    expect(screen.getByPlaceholderText(/e-mail/i)).toBeInTheDocument()
    expect(
      screen.getByRole('button', { name: /send e-mail/i })
    ).toBeInTheDocument()
  })

  it('should validate the email', async () => {
    render(<FormForgotPassword />)

    userEvent.type(screen.getByPlaceholderText(/e-mail/i), 'valid@gmail.com')

    userEvent.click(screen.getByRole('button', { name: /send e-mail/i }))

    expect(
      await screen.findByText(/Check your e-mail inbox!/i)
    ).toBeInTheDocument()
  })

  it('should show error when an invalid email is typed in', async () => {
    render(<FormForgotPassword />)

    userEvent.type(screen.getByPlaceholderText(/e-mail/i), 'invalidemail')

    userEvent.click(screen.getByRole('button', { name: /send e-mail/i }))

    expect(
      await screen.findByText(/must be a valid email/i)
    ).toBeInTheDocument()
  })

  it('should show error when an inexistent email is typed in', async () => {
    render(<FormForgotPassword />)

    userEvent.type(screen.getByPlaceholderText(/e-mail/i), 'false@gmail.com')

    userEvent.click(screen.getByRole('button', { name: /send e-mail/i }))

    expect(
      await screen.findByText(/This email does not exist/i)
    ).toBeInTheDocument()
  })

  it('should autofill email field, if email comes via query parameters', async () => {
    query = { email: 'valid@gmail.com' }

    render(<FormForgotPassword />)

    expect(screen.getByPlaceholderText(/e-mail/i)).toHaveValue(
      'valid@gmail.com'
    )
  })
})

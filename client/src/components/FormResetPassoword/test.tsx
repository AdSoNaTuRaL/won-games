import 'server.mock'
import { signIn } from 'next-auth/client'

import userEvent from '@testing-library/user-event'
import { render, screen, waitFor } from 'utils/test-utils'

import FormResetPassword from '.'

// eslint-disable-next-line @typescript-eslint/no-var-requires
const useRouter = jest.spyOn(require('next/router'), 'useRouter')
let query = {}

useRouter.mockImplementation(() => ({
  query
}))

jest.mock('next-auth/client', () => ({
  signIn: jest.fn()
}))

describe('<FormResetPassword />', () => {
  it('should render the form ', () => {
    render(<FormResetPassword />)

    expect(screen.getByPlaceholderText('Password')).toBeInTheDocument()
    expect(screen.getByPlaceholderText(/confirm password/i)).toBeInTheDocument()
    expect(
      screen.getByRole('button', { name: /reset password/i })
    ).toBeInTheDocument()
  })

  it('should show validation errors', async () => {
    render(<FormResetPassword />)

    userEvent.type(screen.getByPlaceholderText('Password'), '123456789')
    userEvent.type(
      screen.getByPlaceholderText(/confirm password/i),
      '987321654'
    )

    userEvent.click(screen.getByRole('button', { name: /reset password/i }))

    expect(await screen.findByText(/confirm password does not match/i))
  })

  it('should show error when code provided is wrong', async () => {
    query = { code: 'wrong_code' }
    render(<FormResetPassword />)

    userEvent.type(screen.getByPlaceholderText('Password'), '123456789')
    userEvent.type(
      screen.getByPlaceholderText(/confirm password/i),
      '123456789'
    )

    userEvent.click(screen.getByRole('button', { name: /reset password/i }))

    expect(
      await screen.findByText(/incorrect code provided/i)
    ).toBeInTheDocument()
  })

  it('should reset the password and login the user', async () => {
    query = { code: 'right_code' }
    render(<FormResetPassword />)

    userEvent.type(screen.getByPlaceholderText('Password'), '123456789')
    userEvent.type(
      screen.getByPlaceholderText(/confirm password/i),
      '123456789'
    )

    userEvent.click(screen.getByRole('button', { name: /reset password/i }))

    await waitFor(() => {
      expect(signIn).toHaveBeenCalledWith('credentials', {
        email: 'valid@gmail.com',
        password: '123456789',
        callbackUrl: '/'
      })
    })
  })
})

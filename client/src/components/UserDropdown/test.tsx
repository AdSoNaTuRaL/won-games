import userEvent from '@testing-library/user-event'
import { render, screen } from 'utils/test-utils'
import UserDropdown from './index'

// eslint-disable-next-line @typescript-eslint/no-var-requires
const useRouter = jest.spyOn(require('next/router'), 'useRouter')

useRouter.mockImplementation(() => ({
  query: {}
}))

describe('<UserDropdown />', () => {
  it('should render the username', () => {
    render(<UserDropdown username="adsonatural" />)

    expect(screen.getByText('adsonatural')).toBeInTheDocument()
  })

  it('should render the menu', () => {
    render(<UserDropdown username="adsonatural" />)

    // open menu
    userEvent.click(screen.getByText('adsonatural'))

    expect(
      screen.getByRole('link', { name: /my profile/i })
    ).toBeInTheDocument()
    expect(screen.getByRole('link', { name: /wishlist/i })).toBeInTheDocument()
    expect(
      screen.getByRole('button', { name: /sign out/i })
    ).toBeInTheDocument()
  })
})

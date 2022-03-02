import { screen, render } from 'utils/test-utils'
import userEvent from '@testing-library/user-event'

import UserDropdown from './index'

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
    expect(screen.getByRole('link', { name: /sign out/i })).toBeInTheDocument()
  })
})

import { screen } from '@testing-library/react'
import userEvent from '@testing-library/user-event'
import { renderWithTheme } from 'utils/tests/helpers'

import UserDropdown from './index'

describe('<UserDropdown />', () => {
  it('should render the username', () => {
    renderWithTheme(<UserDropdown username="adsonatural" />)

    expect(screen.getByText('adsonatural')).toBeInTheDocument()
  })

  it('should render the menu', () => {
    renderWithTheme(<UserDropdown username="adsonatural" />)

    // open menu
    userEvent.click(screen.getByText('adsonatural'))

    expect(
      screen.getByRole('link', { name: /my profile/i })
    ).toBeInTheDocument()
    expect(screen.getByRole('link', { name: /wishlist/i })).toBeInTheDocument()
    expect(screen.getByRole('link', { name: /sign out/i })).toBeInTheDocument()
  })
})

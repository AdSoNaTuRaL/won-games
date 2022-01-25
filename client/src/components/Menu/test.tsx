import { screen } from '@testing-library/react'
import { renderWithTheme } from 'utils/tests/helpers'

import Menu from './index'

describe('<Menu />', () => {
  it('should render menu', () => {
    renderWithTheme(<Menu />)

    expect(screen.getByLabelText(/open menu/i)).toBeInTheDocument()
    expect(screen.getByLabelText(/search/i)).toBeInTheDocument()
    expect(screen.getByLabelText(/open shopping cart/i)).toBeInTheDocument()
    expect(screen.getByRole('img', { name: /won games/i })).toBeInTheDocument()
  })

  it('should handle open/close mobile menu', () => {
    renderWithTheme(<Menu />)

    // select menuFull
    const fullMenuElement = screen.getByRole('navigation', { hidden: true })
    //verify if menu is hidden
    // click on menu and check if its open
    // click on menu and check if its closed
  })
})

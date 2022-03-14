import { fireEvent, render, screen } from 'utils/test-utils'
import Menu from './index'

// eslint-disable-next-line @typescript-eslint/no-var-requires
const useRouter = jest.spyOn(require('next/router'), 'useRouter')

useRouter.mockImplementation(() => ({
  query: {}
}))

describe('<Menu />', () => {
  it('should render menu', () => {
    render(<Menu />)

    expect(screen.getByLabelText(/open menu/i)).toBeInTheDocument()
    expect(screen.getByLabelText(/search/i)).toBeInTheDocument()
    expect(screen.getAllByLabelText(/shopping cart/i)).toHaveLength(2)
    expect(screen.getByRole('img', { name: /won games/i })).toBeInTheDocument()
  })

  it('should handle open/close mobile menu', () => {
    render(<Menu />)

    // select menuFull
    const fullMenuElement = screen.getByRole('navigation', { hidden: true })

    //verify if menu is hidden
    expect(fullMenuElement.getAttribute('aria-hidden')).toBe('true')
    expect(fullMenuElement).toHaveStyle({ opacity: 0 })

    // click on menu and check if its open
    fireEvent.click(screen.getByLabelText(/open menu/i))
    expect(fullMenuElement.getAttribute('aria-hidden')).toBe('false')
    expect(fullMenuElement).toHaveStyle({ opacity: 1 })

    // click on menu and check if its closed
    fireEvent.click(screen.getByLabelText(/close menu/i))
    expect(fullMenuElement.getAttribute('aria-hidden')).toBe('true')
    expect(fullMenuElement).toHaveStyle({ opacity: 0 })
  })

  it('should show register box when logged out', () => {
    render(<Menu />)

    expect(screen.getByText(/sign in now/i)).toBeInTheDocument()
    expect(screen.getByText(/sign up/i)).toBeInTheDocument()

    expect(screen.queryByText(/my wishlist/i)).not.toBeInTheDocument()
    expect(screen.queryByText(/my profile/i)).not.toBeInTheDocument()
  })

  it('should show wishlist and my account when logged in', () => {
    render(<Menu username="adson" />)

    expect(screen.getAllByText(/my wishlist/i)).toHaveLength(2)
    expect(screen.getAllByText(/my profile/i)).toHaveLength(2)

    expect(screen.queryByText(/login now/i)).not.toBeInTheDocument()
    expect(screen.queryByText(/sign up/i)).not.toBeInTheDocument()
  })

  it('should now show signIn or dropdownUser if loading', () => {
    render(<Menu username="adson" loading />)

    expect(screen.queryByText(/my profile/i)).not.toBeInTheDocument()
    expect(screen.queryByText(/sign up/i)).not.toBeInTheDocument()
  })
})

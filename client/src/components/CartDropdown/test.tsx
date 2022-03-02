import { screen, render } from 'utils/test-utils'

import CartDropdown from './index'

import itemsMock from 'components/CartList/mock'

describe('<CartDropdown />', () => {
  it('should render <CartIcon /> and its badge', () => {
    render(<CartDropdown items={itemsMock} total="R$ 300,00" />)

    expect(screen.getByLabelText(/shopping cart/i)).toBeInTheDocument()
    expect(screen.getByText(`${itemsMock.length}`)).toBeInTheDocument()
  })

  it('should render dropdown content with cart items and total', () => {
    render(<CartDropdown items={itemsMock} total="R$ 300,00" />)

    expect(screen.getByText('R$ 300,00')).toBeInTheDocument()
    expect(screen.getByText('Red Dead Redemption 3')).toBeInTheDocument()
  })
})

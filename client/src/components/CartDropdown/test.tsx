import { screen, render } from 'utils/test-utils'

import CartDropdown from './index'

import itemsMock from 'components/CartList/mock'
import { CartContextDefaultValues } from 'hooks/use-cart'

describe('<CartDropdown />', () => {
  beforeEach(() => {
    const cartProviderProps = {
      ...CartContextDefaultValues,
      items: itemsMock,
      quantity: itemsMock.length,
      total: 'R$ 300,00'
    }
    render(<CartDropdown />, { cartProviderProps })
  })

  it('should render <CartIcon /> and its badge', () => {
    expect(screen.getByLabelText(/shopping cart/i)).toBeInTheDocument()
    expect(screen.getByText(`${itemsMock.length}`)).toBeInTheDocument()
  })

  it('should render dropdown content with cart items and total', () => {
    expect(screen.getByText('R$ 300,00')).toBeInTheDocument()
    expect(screen.getByText('Red Dead Redemption 3')).toBeInTheDocument()
  })
})

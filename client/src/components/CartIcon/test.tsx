import { CartContextDefaultValues } from 'hooks/use-cart'
import { screen, render } from 'utils/test-utils'

import CartIcon from './index'

describe('<CartIcon />', () => {
  it('should render without badge', () => {
    render(<CartIcon />)

    expect(screen.getByLabelText(/shopping cart/i)).toBeInTheDocument()
    expect(screen.queryByLabelText(/card items/i)).not.toBeInTheDocument()
  })

  it('should render with badge', () => {
    render(<CartIcon />, {
      cartProviderProps: { ...CartContextDefaultValues, quantity: 3 }
    })

    expect(screen.getByLabelText(/shopping cart/i)).toBeInTheDocument()
    expect(screen.getByLabelText(/card items/i)).toBeInTheDocument()
    expect(screen.getByText('3')).toBeInTheDocument()
  })
})

import { screen, render } from 'utils/test-utils'

import CartList from './index'
import mockItems from './mock'

const props = {
  items: mockItems,
  total: 'R$ 330,00'
}

describe('<CartList />', () => {
  it('should render the cart list', () => {
    const { container } = render(<CartList {...props} />)

    expect(screen.getAllByRole('heading')).toHaveLength(2)
    expect(screen.getByText(props.total)).toBeInTheDocument()

    expect(container.parentElement).toMatchSnapshot()
  })

  it('should render the button', () => {
    render(<CartList {...props} hasButton />)

    expect(screen.getByText(/buy it now/i)).toBeInTheDocument()
  })

  it('should render the empty state', () => {
    render(<CartList hasButton />)

    expect(screen.getByText(/your cart is empty/i)).toBeInTheDocument()
    expect(screen.queryByText(/total/i)).not.toBeInTheDocument()
  })
})

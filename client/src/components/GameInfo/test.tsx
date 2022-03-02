import { screen, render } from 'utils/test-utils'

import GameInfo from './index'

const props = {
  id: '1',
  title: 'My game title',
  description: 'Game description',
  price: 210
}

describe('<GameInfo />', () => {
  it('should render game information', () => {
    const { container } = render(<GameInfo {...props} />)

    expect(
      screen.getByRole('heading', { name: /my game title/i })
    ).toBeInTheDocument()
    expect(screen.getByText(/game description/i)).toBeInTheDocument()
    expect(screen.getByText(/\$210\.00/i)).toBeInTheDocument()

    expect(container.parentElement).toMatchSnapshot()
  })

  it('should render buttons', () => {
    render(<GameInfo {...props} />)

    expect(
      screen.getByRole('button', { name: /add to cart/i })
    ).toBeInTheDocument()
    expect(
      screen.getByRole('button', { name: /wishlist/i })
    ).toBeInTheDocument()
  })
})

import 'session.mock'
import { screen, render } from 'utils/test-utils'

import GameCard from './index'

const props = {
  id: '1',
  slug: 'population-zero',
  title: 'Population Zero',
  developer: 'Rockstar Games',
  img: 'https://source.unsplash.com/user/willianjusten/300x140',
  price: 235
}

describe('<GameCard />', () => {
  it('should render correctly', () => {
    render(<GameCard {...props} />)

    expect(
      screen.getByRole('heading', { name: props.title })
    ).toBeInTheDocument()

    expect(
      screen.getByRole('heading', { name: props.developer })
    ).toBeInTheDocument()

    expect(screen.getByRole('img', { name: props.title })).toHaveAttribute(
      'src',
      props.img
    )

    expect(screen.getByRole('link', { name: props.title })).toHaveAttribute(
      'href',
      `/game/${props.slug}`
    )

    expect(screen.getByLabelText(/add to wishlist/i)).toBeInTheDocument()
  })

  it('should render price in label', () => {
    render(<GameCard {...props} />)

    const price = screen.getByText('$235.00')

    expect(price).not.toHaveStyle({
      textDecoration: 'line-through'
    })

    expect(price).not.toHaveStyle({ color: '#8F8F8F' })

    expect(price).toHaveStyle({
      backgroundColor: '#3CD3C1'
    })
  })

  it('should render a line-through in price when promotional', () => {
    render(<GameCard {...props} promotionalPrice={200} />)

    expect(screen.getByText('$235.00')).toHaveStyle({
      textDecoration: 'line-through'
    })

    expect(screen.getByText('$200.00')).not.toHaveStyle({
      textDecoration: 'line-through'
    })

    expect(screen.getByText('$200.00')).toHaveStyle({
      backgroundColor: '#3CD3C1'
    })
  })

  it('should render a Ribbon', () => {
    render(
      <GameCard
        {...props}
        ribbon="20% OFF"
        ribbonColor="secondary"
        ribbonSize="small"
      />
    )

    const ribbon = screen.getByText('20% OFF')

    expect(ribbon).toBeInTheDocument()
    expect(ribbon).toHaveStyle({ backgroundColor: '#3CD3C1' })
    expect(ribbon).toHaveStyle({ height: '2.6rem', fontSize: '1.2rem' })
  })
})

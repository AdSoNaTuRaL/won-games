import { screen, render } from 'utils/test-utils'

import cardsMock from 'components/PaymentOptions/mock'

import CardsList from './index'

describe('<CardsList />', () => {
  it('should render the CardsList', () => {
    render(<CardsList cards={cardsMock} />)

    expect(
      screen.getByRole('heading', { name: /my cards/i })
    ).toBeInTheDocument()

    expect(screen.getByRole('img', { name: /visa/i })).toHaveAttribute(
      'src',
      '/img/cards/visa.png'
    )

    expect(screen.getByRole('img', { name: /mastercard/i })).toHaveAttribute(
      'src',
      '/img/cards/mastercard.png'
    )

    expect(screen.getByText(/5498/)).toBeInTheDocument()
    expect(screen.getByText(/5018/)).toBeInTheDocument()
  })
})

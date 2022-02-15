import { screen } from '@testing-library/react'
import { renderWithTheme } from 'utils/tests/helpers'

import PaymentOptions from './index'

import cardsMock from './mock'

describe('<PaymentOptions />', () => {
  it('should render the saved card option and the add new card button', () => {
    renderWithTheme(
      <PaymentOptions cards={cardsMock} handlePayment={jest.fn} />
    )

    expect(screen.getByLabelText(/5498/)).toBeInTheDocument()
    expect(screen.getByLabelText(/5018/)).toBeInTheDocument()
    expect(screen.getByText(/add a new credit card/i)).toBeInTheDocument()
  })
})

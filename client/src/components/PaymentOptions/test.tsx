import { screen, waitFor } from '@testing-library/react'
import userEvent from '@testing-library/user-event'
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

  it('should handle select card when clicking on the label', async () => {
    renderWithTheme(
      <PaymentOptions cards={cardsMock} handlePayment={jest.fn} />
    )

    userEvent.click(screen.getByLabelText(/5498/))
    await waitFor(() => {
      expect(screen.getByRole('radio', { name: /5498/ })).toBeChecked()
    })
  })

  it('should not call handlePayment when button is disabled', () => {
    const handlePayment = jest.fn()
    renderWithTheme(
      <PaymentOptions cards={cardsMock} handlePayment={handlePayment} />
    )

    userEvent.click(screen.getByRole('button', { name: /buy now/i }))
    expect(handlePayment).not.toHaveBeenCalled()
  })

  it('should call handlePayment when credit card is selected and button is enabled', async () => {
    const handlePayment = jest.fn()
    renderWithTheme(
      <PaymentOptions cards={cardsMock} handlePayment={handlePayment} />
    )

    userEvent.click(screen.getByLabelText(/5498/))
    userEvent.click(screen.getByRole('button', { name: /buy now/i }))

    await waitFor(() => {
      expect(handlePayment).toHaveBeenCalled()
    })
  })
})

import { screen } from '@testing-library/react'
import { renderWithTheme } from 'utils/tests/helpers'

import PaymentOptions from './index'

describe('<PaymentOptions />', () => {
  it('should render the heading', () => {
    renderWithTheme(<PaymentOptions />)
  })
})

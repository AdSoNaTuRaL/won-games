import { screen } from '@testing-library/react'
import { renderWithTheme } from 'utils/tests/helpers'

import Games from './index'

describe('<Games />', () => {
  it('should render the heading', () => {
    renderWithTheme(<Games />)
  })
})

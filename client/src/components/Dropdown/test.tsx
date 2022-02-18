import { screen } from '@testing-library/react'
import { renderWithTheme } from 'utils/tests/helpers'

import Dropdown from './index'

describe('<Dropdown />', () => {
  it('should render the heading', () => {
    renderWithTheme(<Dropdown />)
  })
})

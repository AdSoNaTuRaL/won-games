import { screen } from '@testing-library/react'
import { renderWithTheme } from 'utils/tests/helpers'

import Gallery from './index'

describe('<Gallery />', () => {
  it('should render the heading', () => {
    renderWithTheme(<Gallery />)
  })
})

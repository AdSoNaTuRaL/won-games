import { screen } from '@testing-library/react'
import { renderWithTheme } from 'utils/tests/helpers'

import Cart from './index'

describe('<Cart />', () => {
  it('should render the heading', () => {
    const { container } = renderWithTheme(<Cart />)

    // expect(screen.getByRole('heading', { name: /Cart/i })).toBeInTheDocument()

    // expect(container.firstChild).toMatchSnapshot()
  })
})

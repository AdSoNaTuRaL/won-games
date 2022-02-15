import { screen } from '@testing-library/react'
import { renderWithTheme } from 'utils/tests/helpers'

import CartList from './index'
import mockItems from './mock'

const props = {
  items: mockItems,
  total: 'R$ 330,00'
}

describe('<CartList />', () => {
  it('should render the cart list', () => {
    const { container } = renderWithTheme(<CartList {...props} />)

    expect(screen.getAllByRole('heading')).toHaveLength(2)
    expect(screen.getByText(props.total)).toBeInTheDocument()

    expect(container.parentElement).toMatchSnapshot()
  })
})

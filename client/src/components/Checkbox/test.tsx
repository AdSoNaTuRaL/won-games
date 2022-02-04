import { render, screen } from '@testing-library/react'

import Checkbox from './index'

describe('<Checkbox />', () => {
  it('should render the heading', () => {
    const { container } = render(<Checkbox />)
  })
})

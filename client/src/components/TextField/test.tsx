import { render, screen } from '@testing-library/react'

import TextField from './index'

describe('<TextField />', () => {
  it('should render the heading', () => {
    const { container } = render(<TextField />)

    expect(screen.getByRole('heading', { name: /TextField/i })).toBeInTheDocument()

    expect(container.firstChild).toMatchSnapshot()
  })
})

import { render, screen } from '@testing-library/react'

import Home from './index'

describe('<Home />', () => {
  it('should render the heading', () => {
    const { container } = render(<Home />)

    expect(screen.getByRole('heading', { name: /Home/i })).toBeInTheDocument()

    expect(container.firstChild).toMatchSnapshot()
  })
})

import { screen } from '@testing-library/react'
import 'match-media-mock'
import { renderWithTheme } from 'utils/tests/helpers'

import GameCardSlider from './index'

import items from './mock'

describe('<GameSlider />', () => {
  it('should render with 4 active items', () => {
    const { container } = renderWithTheme(<GameCardSlider items={items} />)
    expect(container.querySelectorAll('.slick-active')).toHaveLength(4)
  })

  it('should render black arrows by default', () => {
    renderWithTheme(<GameCardSlider items={items} />)

    expect(screen.getByLabelText(/previous games/i)).toHaveStyle({
      color: '#030517'
    })

    expect(screen.getByLabelText(/next games/i)).toHaveStyle({
      color: '#030517'
    })
  })

  it('should render white arrows if color is passed', () => {
    renderWithTheme(<GameCardSlider items={items} color="white" />)

    expect(screen.getByLabelText(/previous games/i)).toHaveStyle({
      color: '#FAFAFA'
    })

    expect(screen.getByLabelText(/next games/i)).toHaveStyle({
      color: '#FAFAFA'
    })
  })
})

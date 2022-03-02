import 'match-media-mock'
import { screen, render } from 'utils/test-utils'

import GameCardSlider from './index'

import items from './mock'

describe('<GameSlider />', () => {
  it('should render with 4 active items', () => {
    const { container } = render(<GameCardSlider items={items} />)
    expect(container.querySelectorAll('.slick-active')).toHaveLength(4)
  })

  it('should render black arrows by default', () => {
    render(<GameCardSlider items={items} />)

    expect(screen.getByLabelText(/previous games/i)).toHaveStyle({
      color: '#030517'
    })

    expect(screen.getByLabelText(/next games/i)).toHaveStyle({
      color: '#030517'
    })
  })

  it('should render white arrows if color is passed', () => {
    render(<GameCardSlider items={items} color="white" />)

    expect(screen.getByLabelText(/previous games/i)).toHaveStyle({
      color: '#FAFAFA'
    })

    expect(screen.getByLabelText(/next games/i)).toHaveStyle({
      color: '#FAFAFA'
    })
  })
})

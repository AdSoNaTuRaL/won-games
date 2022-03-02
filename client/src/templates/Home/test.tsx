import 'match-media-mock'

import { screen, render } from 'utils/test-utils'

import Home from './index'

import bannersMock from 'components/BannerSlider/mock'
import gamesMock from 'components/GameCardSlider/mock'
import highlighMock from 'components/Highlight/mock'

const props = {
  banners: bannersMock,
  newGames: [gamesMock[0]],
  mostPopularHighlight: highlighMock,
  mostPopularGames: [gamesMock[0]],
  upcomingGames: [gamesMock[0]],
  upcomingHighlight: highlighMock,
  freeGames: [gamesMock[0]],
  freeHighligh: highlighMock,
  newGamesTitle: 'New games',
  mostPopularGamesTitle: 'Most popular games',
  upcomingGamesTitle: 'Upcoming games',
  freeGamesTitle: 'Free games'
}

jest.mock('components/Showcase', () => {
  return {
    __esModule: true,
    default: function Mock() {
      return <div data-testid="Mock showcase"></div>
    }
  }
})

jest.mock('components/BannerSlider', () => {
  return {
    __esModule: true,
    default: function Mock() {
      return <div data-testid="Mock bannerSlider"></div>
    }
  }
})

describe('<Home />', () => {
  it('should render banner and showcase', () => {
    render(<Home {...props} />)

    expect(screen.getAllByTestId('Mock showcase')).toHaveLength(4)
    expect(screen.getByTestId('Mock bannerSlider')).toBeInTheDocument()
  })
})

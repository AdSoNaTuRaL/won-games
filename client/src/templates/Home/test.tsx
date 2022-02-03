import 'match-media-mock'

import { screen } from '@testing-library/react'
import { renderWithTheme } from 'utils/tests/helpers'

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
  upcomingMoreGames: [gamesMock[0]],
  freGames: [gamesMock[0]],
  freeHighligh: highlighMock
}

describe('<Home />', () => {
  it('should render menu, footer, sections and section elements', () => {
    renderWithTheme(<Home {...props} />)

    // MENU
    expect(screen.getByLabelText(/open menu/i)).toBeInTheDocument()

    //FOOTER
    expect(
      screen.getByRole('heading', { name: /contact us/i })
    ).toBeInTheDocument()

    // SECTIONS
    expect(screen.getByRole('heading', { name: /news/i })).toBeInTheDocument()
    expect(
      screen.getByRole('heading', { name: /most popular/i })
    ).toBeInTheDocument()
    expect(
      screen.getByRole('heading', { name: /upcoming/i })
    ).toBeInTheDocument()
    expect(
      screen.getByRole('heading', { name: /free games/i })
    ).toBeInTheDocument()

    // SECTION ELEMENTS
    expect(screen.getAllByText(/defy death/i)).toHaveLength(3)
    expect(screen.getAllByText(/population zero/i)).toHaveLength(5)
    expect(screen.getAllByText(/red dead is back/i)).toHaveLength(3)
  })
})

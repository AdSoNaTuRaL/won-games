import Home, { HomeTemplateProps } from 'templates/Home'

import bannersMock from 'components/BannerSlider/mock'
import gamesMock from 'components/GameCardSlider/mock'
import highlighMock from 'components/Highlight/mock'

export default function Index(props: HomeTemplateProps) {
  return <Home {...props} />
}

export function getServerSideProps() {
  return {
    props: {
      banners: bannersMock,
      newGames: gamesMock,
      mostPopularHighlight: highlighMock,
      mostPopularGames: gamesMock,
      upcomingGames: gamesMock,
      upcomingHighlight: highlighMock,
      upcomingMoreGames: gamesMock,
      freGames: gamesMock,
      freeHighligh: highlighMock
    }
  }
}

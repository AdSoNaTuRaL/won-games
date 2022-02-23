import Home, { HomeTemplateProps } from 'templates/Home'

import gamesMock from 'components/GameCardSlider/mock'
import highlighMock from 'components/Highlight/mock'

import { initializeApollo } from 'utils/apollo'
import { QUERY_HOME } from 'graphql/queries/home'
import { QueryHome } from 'graphql/generated/QueryHome'

export default function Index(props: HomeTemplateProps) {
  return <Home {...props} />
}

export async function getStaticProps() {
  const apolloClient = initializeApollo()

  const { data } = await apolloClient.query<QueryHome>({ query: QUERY_HOME })

  return {
    props: {
      revalidate: 10,
      banners: data.banners.map((banner) => ({
        img: `http://localhost:1337${banner.image?.url}`,
        title: banner.title,
        subtitle: banner.subtitle,
        buttonLabel: banner.button?.label,
        buttonLink: banner.button?.link,
        ribbon: banner.ribbon?.text || null,
        ribbonColor: banner.ribbon?.color || null,
        ribbonSize: banner.ribbon?.size || null
      })),
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

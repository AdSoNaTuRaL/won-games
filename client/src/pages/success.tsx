import { queryRecommended } from 'graphql/generated/queryRecommended'
import { QUERY_RECOMMENDED } from 'graphql/queries/recommended'
import Success, { SuccessTemplateProps } from 'templates/Success'
import { initializeApollo } from 'utils/apollo'
import { gamesMapper, highlightMapper } from 'utils/mappers'

export default function SuccessPage(props: SuccessTemplateProps) {
  return <Success {...props} />
}

export async function getStaticProps() {
  const apolloClient = initializeApollo()

  const { data } = await apolloClient.query<queryRecommended>({
    query: QUERY_RECOMMENDED
  })

  return {
    revalidate: 60 * 60,
    props: {
      recommendedTitle: data.recommended?.section?.title,
      recommendedGames: gamesMapper(data.recommended?.section?.games),
      recommendedHighlight: highlightMapper(
        data.recommended?.section?.highlight
      )
    }
  }
}

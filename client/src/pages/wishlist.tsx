import { queryRecommended } from 'graphql/generated/queryRecommended'
import {
  QueryWishlist,
  QueryWishlistVariables
} from 'graphql/generated/QueryWishlist'
import { QUERY_RECOMMENDED } from 'graphql/queries/recommended'
import { QUERY_WISHLIST } from 'graphql/queries/wishlist'
import { GetServerSidePropsContext } from 'next'
import Wishlist, { WishlistTemplateProps } from 'templates/Wishlist'
import { initializeApollo } from 'utils/apollo'
import { gamesMapper, highlightMapper } from 'utils/mappers'
import protectedRoutes from 'utils/protected-routes'

export default function WishlistPage(props: WishlistTemplateProps) {
  return <Wishlist {...props} />
}

export async function getServerSideProps(context: GetServerSidePropsContext) {
  const session = await protectedRoutes(context)
  const apolloClient = initializeApollo(null, session)

  if (!session) {
    return { props: {} }
  }

  await apolloClient.query<QueryWishlist, QueryWishlistVariables>({
    query: QUERY_WISHLIST,
    variables: {
      identifier: session.user?.email as string
    }
  })

  const { data } = await apolloClient.query<queryRecommended>({
    query: QUERY_RECOMMENDED
  })

  return {
    props: {
      session,
      initialApolloState: apolloClient.cache.extract(),
      recommendedTitle: data.recommended?.section?.title,
      recommendedGames: gamesMapper(data.recommended?.section?.games),
      recommendedHighlight: highlightMapper(
        data.recommended?.section?.highlight
      )
    }
  }
}

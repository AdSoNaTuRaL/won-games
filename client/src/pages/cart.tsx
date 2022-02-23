import Cart, { CartProps } from 'templates/Cart'

import itemsMock from 'components/CartList/mock'
import cardsMock from 'components/PaymentOptions/mock'

import { initializeApollo } from 'utils/apollo'
import { queryRecommended } from 'graphql/generated/queryRecommended'
import { QUERY_RECOMMENDED } from 'graphql/queries/recommended'
import { gamesMapper, highlightMapper } from 'utils/mappers'

export default function CartPage(props: CartProps) {
  return <Cart {...props} />
}

export async function getServerSideProps() {
  const apolloClient = initializeApollo()

  const { data } = await apolloClient.query<queryRecommended>({
    query: QUERY_RECOMMENDED
  })

  return {
    props: {
      recommendedTitle: data.recommended?.section?.title,
      items: itemsMock,
      total: 'R$ 430, 00',
      cards: cardsMock,
      recommendedGames: gamesMapper(data.recommended?.section?.games),
      recommendedHighlight: highlightMapper(
        data.recommended?.section?.highlight
      )
    }
  }
}

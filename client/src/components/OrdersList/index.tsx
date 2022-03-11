import Empty from 'components/Empty'
import GameItem, { GameItemProps, PaymentInfoProps } from 'components/GameItem'
import Heading from 'components/Heading'
import * as S from './styles'

type OrderProps = {
  id: string
  paymentInfo: PaymentInfoProps
  games: GameItemProps[]
}

export type OrdersListProps = {
  orders?: OrderProps[]
}

const OrdersList = ({ orders }: OrdersListProps) => (
  <S.Wrapper>
    <Heading lineBottom color="black" size="small">
      My orders
    </Heading>

    {orders?.length ? (
      orders.map((order) => {
        return order.games.map((game) => (
          <GameItem key={order.id} {...game} paymentInfo={order.paymentInfo} />
        ))
      })
    ) : (
      <Empty
        title="You have no orders yet"
        description="Go back to store and explore greate games and offers"
        hasLink
      />
    )}
  </S.Wrapper>
)

export default OrdersList

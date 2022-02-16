import Empty from 'components/Empty'
import GameItem, { GameItemProps } from 'components/GameItem'
import Heading from 'components/Heading'
import * as S from './styles'

export type OrdersListProps = {
  orders?: GameItemProps[]
}

const OrdersList = ({ orders }: OrdersListProps) => (
  <S.Wrapper>
    <Heading lineBottom color="black" size="small">
      My orders
    </Heading>

    {orders?.length ? (
      orders.map((order) => <GameItem key={order.downloadLink} {...order} />)
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

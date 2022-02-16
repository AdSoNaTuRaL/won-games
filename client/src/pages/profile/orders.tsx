import OrdersList, { OrdersListProps } from 'components/OrdersList'
import Profile from 'templates/Profile'

import ordersMock from 'components/OrdersList/mock'

export default function Orders({ orders }: OrdersListProps) {
  return (
    <Profile>
      <OrdersList orders={orders} />
    </Profile>
  )
}

export function getServerSideProps() {
  return {
    props: {
      orders: ordersMock
    }
  }
}

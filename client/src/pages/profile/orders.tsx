import { GetServerSidePropsContext } from 'next'

import protectedRoutes from 'utils/protected-routes'

import Profile from 'templates/Profile'

import OrdersList, { OrdersListProps } from 'components/OrdersList'
import ordersMock from 'components/OrdersList/mock'

export default function Orders({ orders }: OrdersListProps) {
  return (
    <Profile>
      <OrdersList orders={orders} />
    </Profile>
  )
}

export async function getServerSideProps(context: GetServerSidePropsContext) {
  const session = await protectedRoutes(context)

  return {
    props: {
      orders: ordersMock,
      session
    }
  }
}

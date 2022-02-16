import { Story, Meta } from '@storybook/react/types-6-0'
import OrdersList, { OrdersListProps } from '.'

import ordersMock from './mock'

export default {
  title: 'Profile/OrdersList',
  component: OrdersList,
  args: {
    orders: ordersMock
  }
} as Meta

export const Basic: Story<OrdersListProps> = (args) => (
  <div style={{ maxWidth: 860, margin: 'auto' }}>
    <OrdersList {...args} />
  </div>
)

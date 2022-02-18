import { Story, Meta } from '@storybook/react/types-6-0'
import CartList, { CartListProps } from '.'

import mockItems from './mock'

export default {
  title: 'CartList',
  component: CartList,
  args: {
    items: mockItems,
    total: 'R$ 330,00'
  },
  parameters: {
    backgrounds: {
      default: 'won-dark'
    }
  }
} as Meta

export const Basic: Story<CartListProps> = (args) => (
  <div style={{ maxWidth: 800 }}>
    <CartList {...args} />
  </div>
)

export const WithButton: Story<CartListProps> = (args) => (
  <div style={{ maxWidth: 800 }}>
    <CartList {...args} hasButton />
  </div>
)

export const WithEmptyState: Story<CartListProps> = () => (
  <div style={{ maxWidth: 800 }}>
    <CartList />
  </div>
)

import { Story, Meta } from '@storybook/react/types-6-0'
import ExploreSidebar, { ExploreSidebarProps } from '.'

import itemsMock from './mock'

export default {
  title: 'ExploreSidebar',
  component: ExploreSidebar,
  parameters: {
    backgrounds: {
      default: 'won-dark'
    }
  },
  args: {
    items: itemsMock
  },
  argTypes: {
    items: {
      table: {
        disable: true
      }
    }
  }
} as Meta

export const Basic: Story<ExploreSidebarProps> = (args) => (
  <ExploreSidebar {...args} />
)

import { Story, Meta } from '@storybook/react/types-6-0'
import Menu from '.'

export default {
  title: 'Menu',
  component: Menu,
  parameters: {
    layout: 'fullscreen',
    backgrounds: {
      default: 'won-dark'
    }
  }
} as Meta

export const Basic: Story = (args) => <Menu {...args} />

export const Logged: Story = (args) => <Menu {...args} />

Logged.args = {
  username: 'adsonatural'
}

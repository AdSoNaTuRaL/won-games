import { Story, Meta } from '@storybook/react/types-6-0'
import Dropdown, { DropdownProps } from '.'

export default {
  title: 'Dropdown',
  component: Dropdown,
  parameters: {
    backgrounds: {
      default: 'won-dark'
    }
  },
  args: {
    title: 'Click here',
    children: 'Content'
  }
} as Meta

export const Basic: Story<DropdownProps> = (args) => <Dropdown {...args} />

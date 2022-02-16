import { Story, Meta } from '@storybook/react/types-6-0'
import ProfileMenu from '.'

export default {
  title: 'Profile/ProfileMenu',
  component: ProfileMenu,
  parameters: {
    backgrounds: {
      default: 'won-dark'
    }
  }
} as Meta

export const Basic: Story = (args) => <ProfileMenu {...args} />

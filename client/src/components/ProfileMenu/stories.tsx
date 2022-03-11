import { Meta, Story } from '@storybook/react/types-6-0'
import ProfileMenu, { ProfileMenuProps } from '.'

export default {
  title: 'Profile/ProfileMenu',
  component: ProfileMenu,
  parameters: {
    backgrounds: {
      default: 'won-dark'
    }
  }
} as Meta

export const Basic: Story<ProfileMenuProps> = (args) => (
  <ProfileMenu {...args} />
)

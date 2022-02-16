import { Story, Meta } from '@storybook/react/types-6-0'
import FormProfile from '.'

export default {
  title: 'Profile/FormProfile',
  component: FormProfile
} as Meta

export const Basic: Story = (args) => <FormProfile {...args} />

import { Story, Meta } from '@storybook/react/types-6-0'
import TextField from '.'

export default {
  title: 'TextField',
  component: TextField
} as Meta

export const Basic: Story = (args) => <TextField {...args} />

import { Story, Meta } from '@storybook/react/types-6-0'
import Checkbox, { CheckBoxProps } from '.'

export default {
  title: 'Checkbox',
  component: Checkbox,
  argTypes: {
    onCheck: {
      action: 'checked'
    }
  }
} as Meta

export const Basic: Story<CheckBoxProps> = (args) => <Checkbox {...args} />

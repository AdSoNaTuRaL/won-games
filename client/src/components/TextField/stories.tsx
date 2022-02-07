import { Story, Meta } from '@storybook/react/types-6-0'
import { Email } from 'styled-icons/material-outlined'
import TextField, { TextFieldProps } from '.'

export default {
  title: 'Form/TextField',
  component: TextField,
  args: {
    label: 'E-mail',
    labelFor: 'email',
    icon: <Email />,
    id: 'email',
    initialValue: '',
    placeholder: 'adsonhenriquesilva@gmail.com'
  },
  argTypes: {
    onInput: { action: 'changed' },
    icon: {
      table: {
        disable: true
      }
    }
  }
} as Meta

export const Basic: Story<TextFieldProps> = (args) => (
  <div style={{ maxWidth: 300, padding: 15 }}>
    <TextField {...args} />
  </div>
)

export const withError: Story<TextFieldProps> = (args) => (
  <div style={{ maxWidth: 300, padding: 15 }}>
    <TextField {...args} />
  </div>
)

withError.args = {
  error: 'Oops...something is wrong'
}

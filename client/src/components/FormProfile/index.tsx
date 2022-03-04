import Button from 'components/Button'
import Heading from 'components/Heading'
import TextField from 'components/TextField'
import * as S from './styles'

export type FormProfileProps = {
  username?: string
  email?: string
}

const FormProfile = ({ email, username }: FormProfileProps) => (
  <>
    <Heading lineBottom color="black" size="small">
      My profile
    </Heading>

    <S.Form>
      <TextField
        name="username"
        placeholder="Username"
        type="text"
        label="Username"
        initialValue={username}
      />
      <TextField
        name="email"
        placeholder="E-mail"
        label="E-mail"
        disabled
        type="email"
        initialValue={email}
      />
      <TextField
        name="password"
        placeholder="Type your password"
        label="Password"
        type="password"
      />
      <TextField
        name="new_password"
        placeholder="New password"
        label="New password"
        type="password"
      />

      <Button size="large">Save</Button>
    </S.Form>
  </>
)

export default FormProfile

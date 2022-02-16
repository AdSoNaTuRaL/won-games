import Button from 'components/Button'
import Heading from 'components/Heading'
import TextField from 'components/TextField'
import * as S from './styles'

const FormProfile = () => (
  <>
    <Heading lineBottom color="black" size="small">
      My profile
    </Heading>

    <S.Form>
      <TextField
        name="name"
        placeholder="Name"
        label="Name"
        initialValue="John Doe"
      />
      <TextField
        name="email"
        placeholder="E-mail"
        label="E-mail"
        disabled
        type="email"
        initialValue="johndoe@gmail.com"
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

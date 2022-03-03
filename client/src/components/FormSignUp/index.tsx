import Link from 'next/link'
import { useState } from 'react'
import { useMutation } from '@apollo/client'
import { AccountCircle, Email, Lock } from 'styled-icons/material-outlined'

import Button from 'components/Button'
import TextField from 'components/TextField'
import { FormWrapper, FormLink } from 'components/Form/index'

import { UsersPermissionsRegisterInput } from 'graphql/generated/globalTypes'
import { MUTATION_REGISTER } from 'graphql/mutations/register'

const FormSignUp = () => {
  const [values, setValues] = useState<UsersPermissionsRegisterInput>({
    email: '',
    username: '',
    password: ''
  })

  const [createUser] = useMutation(MUTATION_REGISTER)

  const handleInput = (field: string, value: string) => {
    setValues((s) => ({ ...s, [field]: value }))
  }

  const handleSubmit = async (event: React.FormEvent) => {
    event.preventDefault()

    await createUser({
      variables: {
        input: {
          email: values.email,
          username: values.username,
          password: values.password
        }
      }
    })
  }

  return (
    <FormWrapper>
      <form onSubmit={handleSubmit}>
        <TextField
          name="username"
          type="text"
          placeholder="Username"
          onInputChange={(value) => handleInput('username', value)}
          icon={<AccountCircle />}
        />
        <TextField
          name="email"
          type="email"
          placeholder="E-mail"
          onInputChange={(value) => handleInput('email', value)}
          icon={<Email />}
        />
        <TextField
          name="password"
          type="password"
          placeholder="Password"
          onInputChange={(value) => handleInput('password', value)}
          icon={<Lock />}
        />
        <TextField
          name="confirm-password"
          type="password"
          placeholder="Confirm password"
          onInputChange={(value) => handleInput('confirm-password', value)}
          icon={<Lock />}
        />

        <Button type="submit" size="large" fullWidth>
          Sign up now
        </Button>

        <FormLink>
          Already have an account?
          <Link href="/sign-in">
            <a> Sign In</a>
          </Link>
        </FormLink>
      </form>
    </FormWrapper>
  )
}

export default FormSignUp

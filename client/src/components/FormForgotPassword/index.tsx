import { useState } from 'react'
import { useRouter } from 'next/router'
import { signIn } from 'next-auth/client'
import { Email, ErrorOutline } from 'styled-icons/material-outlined'

import Button from 'components/Button'
import TextField from 'components/TextField'
import { FormWrapper, FormLoading, FormError } from 'components/Form/index'

import { FieldErrors } from 'utils/validations'

const FormForgotPassword = () => {
  const [formError, setFormError] = useState('')
  const [fieldError, setFieldError] = useState<FieldErrors>({})
  const [values, setValues] = useState({ email: '' })
  const [loading, setLoading] = useState(false)
  const { push, query } = useRouter()

  const handleInput = (field: string, value: string) => {
    setValues((s) => ({ ...s, [field]: value }))
  }

  const handleSubmit = async (event: React.FormEvent) => {
    event.preventDefault()
    setLoading(true)

    const errors = {} // validate password

    if (Object.keys(errors).length) {
      setFieldError(errors)
      setLoading(false)
      return
    }

    setFieldError({})

    const result = await signIn<'credentials'>('credentials', {
      ...values,
      redirect: false,
      callbackUrl: `${window.location.origin}${query?.callbackUrl || ''}`
    })

    if (result?.url) {
      return push(result.url)
    }

    setLoading(false)

    setFormError('username or password is invalid')
  }

  return (
    <FormWrapper>
      {!!formError && (
        <FormError>
          <ErrorOutline /> {formError}
        </FormError>
      )}
      <form onSubmit={handleSubmit}>
        <TextField
          name="email"
          placeholder="E-mail"
          type="email"
          error={fieldError?.email}
          onInputChange={(value) => handleInput('email', value)}
          icon={<Email />}
        />

        <Button type="submit" size="large" fullWidth disabled={loading}>
          {loading ? <FormLoading /> : <span>Send e-mail</span>}
        </Button>
      </form>
    </FormWrapper>
  )
}

export default FormForgotPassword

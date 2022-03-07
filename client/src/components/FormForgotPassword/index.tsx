import { useState } from 'react'
import {
  CheckCircleOutline,
  Email,
  ErrorOutline
} from 'styled-icons/material-outlined'

import Button from 'components/Button'
import TextField from 'components/TextField'
import {
  FormWrapper,
  FormLoading,
  FormError,
  FormSuccess
} from 'components/Form/index'

import { FieldErrors, forgotPasswordValidation } from 'utils/validations'

const FormForgotPassword = () => {
  const [success, setSuccess] = useState(false)
  const [formError, setFormError] = useState('')
  const [fieldError, setFieldError] = useState<FieldErrors>({})
  const [values, setValues] = useState({ email: '' })
  const [loading, setLoading] = useState(false)

  const handleInput = (field: string, value: string) => {
    setValues((s) => ({ ...s, [field]: value }))
  }

  const handleSubmit = async (event: React.FormEvent) => {
    event.preventDefault()
    setLoading(true)

    const errors = forgotPasswordValidation(values) // validate email

    if (Object.keys(errors).length) {
      setFieldError(errors)
      setLoading(false)
      return
    }

    setFieldError({})

    const response = await fetch(
      `${process.env.NEXT_PUBLIC_API_URL}/auth/forgot-password`,
      {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify(values)
      }
    )

    const data = await response.json()
    setLoading(false)

    if (data.error) {
      setFormError(data.message[0].messages[0].message)
    } else {
      setSuccess(true)
    }
  }

  return (
    <FormWrapper>
      {success ? (
        <FormSuccess>
          <CheckCircleOutline /> Check your e-mail inbox!
        </FormSuccess>
      ) : (
        <>
          {!!formError && (
            <FormError>
              <ErrorOutline /> {formError}
            </FormError>
          )}
          <form onSubmit={handleSubmit}>
            <TextField
              name="email"
              placeholder="E-mail"
              type="text"
              error={fieldError?.email}
              onInputChange={(value) => handleInput('email', value)}
              icon={<Email />}
            />

            <Button type="submit" size="large" fullWidth disabled={loading}>
              {loading ? <FormLoading /> : <span>Send e-mail</span>}
            </Button>
          </form>
        </>
      )}
    </FormWrapper>
  )
}

export default FormForgotPassword

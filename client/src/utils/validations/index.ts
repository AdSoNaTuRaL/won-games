import Joi from 'joi'
import { UsersPermissionsRegisterInput } from 'graphql/generated/globalTypes'

export type FieldErrors = {
  [key: string]: string
}

type SignValues = Omit<UsersPermissionsRegisterInput, 'username'>

const fieldsValidations = {
  username: Joi.string().min(5).required(),

  email: Joi.string()
    .email({ tlds: { allow: false } })
    .required(),

  password: Joi.string().min(8).required(),

  confirm_password: Joi.string()
    .valid(Joi.ref('password'))
    .required()
    .messages({
      'any.only': 'confirm password does not match'
    })
}

function getFieldErrors(objectErrors: Joi.ValidationResult) {
  const errors: FieldErrors = {}

  if (objectErrors.error) {
    objectErrors.error.details.forEach((err) => {
      errors[err.path.join('.')] = err.message
    })
  }

  return errors
}

export function signInValidation(values: SignValues) {
  const { email, password } = fieldsValidations
  const schema = Joi.object({ email, password })

  return getFieldErrors(schema.validate(values, { abortEarly: false }))
}

export function signUpValidation(values: SignValues) {
  const schema = Joi.object(fieldsValidations)

  return getFieldErrors(schema.validate(values, { abortEarly: false }))
}

type ForgotValidationParams = Pick<SignValues, 'email'>

export function forgotPasswordValidation(values: ForgotValidationParams) {
  const { email } = fieldsValidations
  const schema = Joi.object({ email })

  return getFieldErrors(schema.validate(values, { abortEarly: false }))
}

type ResetPasswordValidationParams = {
  password: string
  confirm_password: string
}

export function resetPasswordValidation(values: ResetPasswordValidationParams) {
  const { password, confirm_password } = fieldsValidations
  const schema = Joi.object({ password, confirm_password })

  return getFieldErrors(schema.validate(values, { abortEarly: false }))
}

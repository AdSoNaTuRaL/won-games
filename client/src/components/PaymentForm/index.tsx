import { CardElement } from '@stripe/react-stripe-js'
import Button from 'components/Button'
import Heading from 'components/Heading'
import { ShoppingCart } from 'styled-icons/material-outlined'
import * as S from './styles'

const PaymentForm = () => {
  return (
    <S.Wrapper>
      <S.Body>
        <Heading lineBottom lineColor="primary" color="black" size="small">
          Payment
        </Heading>

        <CardElement
          options={{
            hidePostalCode: true
          }}
        />
      </S.Body>
      <S.Footer>
        <Button minimal as="a" fullWidth>
          Continue shopping
        </Button>
        <Button fullWidth icon={<ShoppingCart />}>
          Buy now
        </Button>
      </S.Footer>
    </S.Wrapper>
  )
}
export default PaymentForm

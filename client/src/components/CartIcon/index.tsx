import { useCart } from 'hooks/use-cart'
import { ShoppingCart } from 'styled-icons/material-outlined'
import * as S from './styles'

const CartIcon = () => {
  const { quantity } = useCart()
  return (
    <S.Wrapper>
      {quantity > 0 && <S.Badge aria-label="cart items">{quantity}</S.Badge>}
      <ShoppingCart aria-label="Shopping cart" />
    </S.Wrapper>
  )
}
export default CartIcon

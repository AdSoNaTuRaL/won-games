import Button, { ButtonProps } from 'components/Button'
import { useCart } from 'hooks/use-cart'
import {
  AddShoppingCart,
  RemoveShoppingCart
} from 'styled-icons/material-outlined'

type CartButtonProps = {
  id: string
  hasText?: boolean
} & Pick<ButtonProps, 'size'>

const CartButton = ({
  id,
  size = 'small',
  hasText = false
}: CartButtonProps) => {
  const { isInCart, addToCart, removeFromCart } = useCart()
  const buttonText = isInCart(id) ? 'Remove from cart' : 'Add to Cart'

  return (
    <Button
      icon={isInCart(id) ? <RemoveShoppingCart /> : <AddShoppingCart />}
      size={size}
      onClick={() => (isInCart(id) ? removeFromCart(id) : addToCart(id))}
      aria-label={buttonText}
    >
      {hasText ? buttonText : null}
    </Button>
  )
}

export default CartButton

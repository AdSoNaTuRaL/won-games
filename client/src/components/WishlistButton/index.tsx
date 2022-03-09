import Button, { ButtonProps } from 'components/Button'
import { useWishlist } from 'hooks/use-wishlist'
import { useSession } from 'next-auth/client'
import { Favorite, FavoriteBorder } from 'styled-icons/material-outlined'

type WishlistButtonProps = {
  id: string
  hasText?: boolean
} & Pick<ButtonProps, 'size'>

const WishlistButton = ({
  id,
  hasText,
  size = 'small'
}: WishlistButtonProps) => {
  const [session] = useSession()
  const { isInWishlist } = useWishlist()
  const buttonText = isInWishlist(id)
    ? 'Remove from Wishlist'
    : 'Add to Wishlist'

  if (!session) return null

  return (
    <Button
      icon={
        isInWishlist(id) ? (
          <Favorite aria-label={buttonText} />
        ) : (
          <FavoriteBorder aria-label={buttonText} />
        )
      }
      minimal
      size={size}
    >
      {hasText && buttonText}
    </Button>
  )
}

export default WishlistButton

import Button, { ButtonProps } from 'components/Button'
import Spinner from 'components/Spinner'
import { useWishlist } from 'hooks/use-wishlist'
import { useSession } from 'next-auth/client'
import { useState } from 'react'
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
  const [loading, setLoading] = useState(false)
  const { isInWishlist, addToWishlist, removeFromWishlist } = useWishlist()

  const handleClick = async () => {
    setLoading(true)
    isInWishlist(id) ? await removeFromWishlist(id) : await addToWishlist(id)
    setLoading(false)
  }

  const buttonText = isInWishlist(id)
    ? 'Remove from Wishlist'
    : 'Add to Wishlist'

  if (!session) return null

  return (
    <Button
      icon={
        loading ? (
          <Spinner />
        ) : isInWishlist(id) ? (
          <Favorite aria-label={buttonText} />
        ) : (
          <FavoriteBorder aria-label={buttonText} />
        )
      }
      onClick={handleClick}
      minimal
      size={size}
    >
      {hasText && buttonText}
    </Button>
  )
}

export default WishlistButton

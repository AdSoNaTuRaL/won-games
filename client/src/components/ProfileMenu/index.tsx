import { signOut } from 'next-auth/client'
import Link from 'next/link'
import { useRouter } from 'next/router'
import {
  AccountCircle,
  ExitToApp,
  FormatListBulleted
} from 'styled-icons/material-outlined'
import * as S from './styles'

export type ProfileMenuProps = {
  activeLink?: '/profile/me' | '/profile/orders' | string
}

const ProfileMenu = ({ activeLink }: ProfileMenuProps) => {
  const { push } = useRouter()

  return (
    <S.Nav>
      <Link href="/profile/me" passHref>
        <S.Link isActive={activeLink === '/profile/me'} title="My profile">
          <AccountCircle size={24} />
          <span>My profile</span>
        </S.Link>
      </Link>

      <Link href="/profile/orders" passHref>
        <S.Link isActive={activeLink === '/profile/orders'} title="My orders">
          <FormatListBulleted size={24} />
          <span>My orders</span>
        </S.Link>
      </Link>

      <S.Link
        role="button"
        onClick={async () => {
          const data = await signOut({ redirect: false, callbackUrl: '/' })
          push(data.url)
        }}
        title="Sign out"
      >
        <ExitToApp size={24} />
        <span>Sign out</span>
      </S.Link>
    </S.Nav>
  )
}
export default ProfileMenu

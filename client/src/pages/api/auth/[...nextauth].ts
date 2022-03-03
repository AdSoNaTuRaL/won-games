import NextAuth, { NextAuthOptions } from 'next-auth'
import CredentialsProvider from 'next-auth/providers/credentials'
import { NextApiRequest, NextApiResponse } from 'next'

const options: NextAuthOptions = {
  pages: {
    signIn: '/sign-in'
  },
  providers: [
    CredentialsProvider({
      name: 'Sign-in',
      credentials: {},
      async authorize(credentials) {
        const response = await fetch(
          `${process.env.NEXT_PUBLIC_API_URL}/auth/local`,
          {
            method: 'POST',
            body: new URLSearchParams(credentials)
          }
        )

        const data = await response.json()

        if (data.user) {
          return { ...data.user, jwt: data.jwt }
        } else {
          return null
        }
      }
    })
  ],
  callbacks: {
    session: async ({ session, user }) => {
      session.jwt = user.jwt
      session.id = user.id

      return Promise.resolve(session)
    },
    jwt: async ({ token, user }) => {
      if (user) {
        token.id = user.id
        token.email = user.email
        token.name = user.name
        token.jwt = user.jwt
      }

      return Promise.resolve(token)
    }
  }
}

const Auth = (req: NextApiRequest, res: NextApiResponse) =>
  NextAuth(req, res, options)

export default Auth

import Head from 'next/head'
import type { AppProps } from 'next/app'
import NextNProgress from 'nextjs-progressbar'
import { ApolloProvider } from '@apollo/client'
import { ThemeProvider } from 'styled-components'
import { Provider as AuthProvider } from 'next-auth/client'

import { useApollo } from 'utils/apollo'

import GlobalStyles from 'styles/global'
import theme from 'styles/theme'

import { CartProvider } from 'hooks/use-cart'
import { WishlistProvider } from 'hooks/use-wishlist'

function App({ Component, pageProps }: AppProps) {
  const client = useApollo(pageProps.initialApolloState)

  return (
    <AuthProvider session={pageProps.session}>
      <ApolloProvider client={client}>
        <ThemeProvider theme={theme}>
          <CartProvider>
            <WishlistProvider>
              <Head>
                <title>Won Games</title>
                <link rel="shortcut icon" href="/img/logo-won.png" />
                <link rel="apple-touch-icon" href="/img/logo-won.png" />
                <link rel="manifest" href="/manifest.json" />
                <meta
                  name="description"
                  content="The best gamestore in the world"
                />
              </Head>
              <GlobalStyles />
              <NextNProgress
                color="#F231A5"
                startPosition={0.3}
                stopDelayMs={200}
                height={5}
              />
              <Component {...pageProps} />
            </WishlistProvider>
          </CartProvider>
        </ThemeProvider>
      </ApolloProvider>
    </AuthProvider>
  )
}

export default App

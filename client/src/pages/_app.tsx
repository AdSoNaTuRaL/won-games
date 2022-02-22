import {
  ApolloProvider,
  ApolloClient,
  gql,
  InMemoryCache
} from '@apollo/client'
import { ThemeProvider } from 'styled-components'
import type { AppProps } from 'next/app'
import Head from 'next/head'

import GlobalStyles from 'styles/global'
import theme from 'styles/theme'

function App({ Component, pageProps }: AppProps) {
  const client = new ApolloClient({
    uri: 'http://localhost:1337/graphql',
    cache: new InMemoryCache()
  })

  return (
    <ApolloProvider client={client}>
      <ThemeProvider theme={theme}>
        <Head>
          <title>Won Games</title>
          <link rel="shortcut icon" href="/img/logo-won.png" />
          <link rel="apple-touch-icon" href="/img/logo-won.png" />
          <link rel="manifest" href="/manifest.json" />
          <meta name="description" content="The best gamestore in the world" />
        </Head>
        <GlobalStyles />
        <Component {...pageProps} />
      </ThemeProvider>
    </ApolloProvider>
  )
}

export default App

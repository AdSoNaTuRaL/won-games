import { ApolloProvider } from '@apollo/client'
import { ThemeProvider } from 'styled-components'
import { useApollo } from 'utils/apollo'
import type { AppProps } from 'next/app'
import Head from 'next/head'

import GlobalStyles from 'styles/global'
import theme from 'styles/theme'

function App({ Component, pageProps }: AppProps) {
  const client = useApollo(pageProps.initialApolloState)

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

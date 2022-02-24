import { useMemo } from 'react'

import { ApolloClient, HttpLink, NormalizedCacheObject } from '@apollo/client'
import apolloCache from './apollo-cache'

let apolloClient: ApolloClient<NormalizedCacheObject | null>

function createApolloClient() {
  return new ApolloClient({
    ssrMode: typeof window === 'undefined',
    link: new HttpLink({ uri: 'http://localhost:1337/graphql' }),
    cache: apolloCache
  })
}

export function initializeApollo(initialState = null) {
  // verify if its already exist an instance of apollo, if not create one
  const apolloClientGlobal = apolloClient ?? createApolloClient()

  // recovery cache data
  if (initialState) {
    apolloClientGlobal.cache.restore(initialState)
  }

  // always initialize in SSR with clean cache
  if (typeof window === 'undefined') return apolloClientGlobal
  apolloClient = apolloClient ?? apolloClientGlobal

  return apolloClient
}

export function useApollo(initialState = null) {
  const store = useMemo(() => initializeApollo(initialState), [initialState])
  return store
}

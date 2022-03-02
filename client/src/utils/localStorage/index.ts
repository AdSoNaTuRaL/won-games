const APP_KEY = 'WONGAMES'

export function getStorageItem(key: string) {
  // check if is running on SSR (NextJS)
  if (typeof window === 'undefined') return

  const data = window.localStorage.getItem(`${APP_KEY}_${key}`)
  return JSON.parse(data!)
}

export function setStorageItem(key: string, value: string[]) {
  // check if is running on SSR (NextJS)
  if (typeof window === 'undefined') return

  const data = JSON.stringify(value)
  return window.localStorage.setItem(`${APP_KEY}_${key}`, data)
}

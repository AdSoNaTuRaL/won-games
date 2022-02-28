module.exports = {
  testEnvironment: 'jsdom',
  testPathIgnorePatterns: ['/node_modules/', '/.next/'],
  collectCoverage: true,
  collectCoverageFrom: [
    'src/**/*.ts(x)?',
    '!src/**/stories.tsx',
    '!src/pages/**/*.tsx',
    '!src/styles/**/*.ts',
    '!src/types/**/*.ts',
    '!src/**/mock.ts',
    '!src/utils/apollo.ts',
    '!src/utils/apollo-cache.ts',
    '!src/graphql/**/*.ts'
  ],
  setupFilesAfterEnv: ['<rootDir>/.jest/setup.ts'],
  moduleDirectories: ['node_modules', 'src'],
  modulePaths: ['<rootDir>/src/', '<rootDir>/.jest']
}

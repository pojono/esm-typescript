module.exports = {
  extends: [
    // https://typescript-eslint.io/linting/configs
    // Contains all of recommended,
    // recommended-type-checked, and strict,
    // along with additional strict rules that require type information.
    // 1 'plugin:@typescript-eslint/recommended',
    // 2 'plugin:@typescript-eslint/recommended-type-checked',
    // 3 'plugin:@typescript-eslint/strict',
    // 4 'plugin:@typescript-eslint/strict-type-checked',
    // Contains all the stylistic,
    // along with additional stylistic rules that require type information.
    // 1 'plugin:@typescript-eslint/stylistic',
    // 2 'plugin:@typescript-eslint/stylistic-type-checked'
    'eslint:recommended',
    'plugin:@typescript-eslint/strict-type-checked',
    'plugin:@typescript-eslint/stylistic-type-checked',
    'plugin:prettier/recommended',
  ],
  parser: "@typescript-eslint/parser",
  parserOptions: {
    project: true,
    tsconfigRootDir: __dirname
  },
  plugins: ["@typescript-eslint"],
  root: true,
  rules: {
    'prettier/prettier': 'warn',
  }
};
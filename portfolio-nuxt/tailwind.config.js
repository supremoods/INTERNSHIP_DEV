/** @type {import('tailwindcss').Config} */
module.exports = {
  content: [
    "./components/**/*.{js,vue,ts}",
    "./layouts/**/*.vue",
    "./pages/**/*.vue",
    "./plugins/**/*.{js,ts}",
    "./nuxt.config.{js,ts}",
  ],
  theme: {
    extend: {
      colors: {
        'base-color': '#26222E',
        'base-violet-light': '#EDE3F9',
        'base-violet': '#7219D9',
        'primary-txt': '#FFDEDE',
        'primary-ligth-txt': '#EFDAFF',
        'secondary-txt': '#E45666',
        'secondary-light-txt': '#EA6A79',
        'light-violet-txt': '#E6E6FF',
        'primary-icons': '#EED7FF'
      }
    },
  },
  plugins: [],
}


/** @type {import('tailwindcss').Config} */
module.exports = {
  content: ["public/*.{html,js}"],
  theme: {
    extend: {
      colors: {
        'base-color': '#26222E',
        'base-violet': '#B3B3FF',
        'primary-txt': '#FFDEDE',
        'primary-ligth-txt': '#EFDAFF',
        'secondary-txt': '#E45666',
        'light-violet-txt': '#E6E6FF',
        'primary-icons': '#EED7FF'
      }
    },
  },
  plugins: [],
}

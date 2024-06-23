/** @type {import('tailwindcss').Config} */
module.exports = {
  content: [
    "./root/**/*.{html,js,ts,php,twig.html,twig,jsx,tsx,md,mdx}",
    "./root/private/shared/**/*.{html,js,ts,php,twig.html,twig,jsx,tsx,md,mdx}",
    "./root/private/shared/templates/**/*.{html,js,ts,php,twig.html,twig,jsx,tsx,md,mdx}",
  ],
  theme: {
    extend: {},
  },
  plugins: [],
}


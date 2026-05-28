// https://nuxt.com/docs/api/configuration/nuxt-config
export default defineNuxtConfig({
  compatibilityDate: '2025-05-28',
  devtools: { enabled: true },
  css: ['~/assets/css/main.css'],
  modules: ['@pinia/nuxt', '@vueuse/nuxt'],
  runtimeConfig: {
    public: {
      appName: process.env.NUXT_PUBLIC_APP_NAME || 'Aegis Escrow',
      rpcUrl: process.env.NUXT_PUBLIC_RPC_URL || 'http://127.0.0.1:8545',
      backendUrl: process.env.NUXT_PUBLIC_BACKEND_URL || 'http://127.0.0.1:8000',
    },
  },
})

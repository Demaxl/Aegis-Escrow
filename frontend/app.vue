<template>
  <main class="min-h-screen bg-slate-950 text-slate-100 flex items-center justify-center p-8">
    <div class="max-w-xl text-center space-y-4">
      <p class="text-sm uppercase tracking-widest text-emerald-400">Phase 0</p>
      <h1 class="text-4xl font-bold">{{ appName }}</h1>
      <p class="text-slate-300">
        Decentralized escrow platform bootstrap. Wallet and escrow flows arrive in later phases.
      </p>
      <dl class="text-left text-sm bg-slate-900/60 border border-slate-800 rounded-lg p-4 space-y-2">
        <div class="flex justify-between gap-4">
          <dt class="text-slate-400">RPC URL</dt>
          <dd class="font-mono break-all">{{ rpcUrl }}</dd>
        </div>
        <div class="flex justify-between gap-4">
          <dt class="text-slate-400">Backend URL</dt>
          <dd class="font-mono break-all">{{ backendUrl }}</dd>
        </div>
      </dl>
    </div>
  </main>
</template>

<script setup lang="ts">
const config = useRuntimeConfig()
const appName = config.public.appName
const rpcUrl = config.public.rpcUrl
const backendUrl = config.public.backendUrl
</script>

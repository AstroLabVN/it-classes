<template>
  <h1 :style="{ fontSize: size, marginBottom: mb }"><slot /></h1>
</template>

<script setup>
defineProps({
  size: { type: String, default: '3em' },
  mb: { type: String, default: '0' }
})
</script>

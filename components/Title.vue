<template>
  <h1 :style="{ fontSize: size }"><slot /></h1>
</template>

<script setup>
defineProps({
  size: { type: String, default: '3em' }
})
</script>

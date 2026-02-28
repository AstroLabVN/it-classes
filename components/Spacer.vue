<template>
  <div :style="{ height: size }"></div>
</template>

<script setup>
defineProps({
  size: { type: String, default: '1rem' }
})
</script>

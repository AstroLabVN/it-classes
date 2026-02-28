<template>
  <div class="result-block" :style="{ fontSize: size }">
    <slot />
  </div>
</template>

<script setup>
defineProps({
  size: { type: String, default: '0.85em' }
})
</script>

<style scoped>
.result-block {
  background: #f1f5f9;
  padding: 16px;
  border-radius: 6px;
}
</style>

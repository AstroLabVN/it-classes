<template>
  <div class="font-bold" :class="sizeClass" style="color:#60aace;"><slot /></div>
</template>

<script setup>
import { computed } from 'vue'

const props = defineProps({
  size: { type: String, default: 'md' }
})

const sizeClass = computed(() => ({
  'text-xs mb-1': props.size === 'sm',
  'text-l mb-2': props.size === 'md',
}))
</script>

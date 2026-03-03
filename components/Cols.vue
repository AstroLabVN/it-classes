<template>
  <div class="grid" :style="gridStyle">
    <slot />
  </div>
</template>

<script setup>
import { computed } from 'vue'

const props = defineProps({
  cols: { type: [String, Number], default: 2 },
  gap: { type: [String, Number], default: '1rem' },
})

const gridStyle = computed(() => ({
  gridTemplateColumns: `repeat(${props.cols}, minmax(0, 1fr))`,
  gap: typeof props.gap === 'number' ? `${props.gap}px` : props.gap,
}))
</script>

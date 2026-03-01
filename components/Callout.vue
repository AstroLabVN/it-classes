<template>
  <div class="callout" :class="`callout-${type}`" :style="spacingStyle">
    <svg class="callout-icon" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
      <circle v-if="type === 'info'" cx="12" cy="12" r="10" /><line v-if="type === 'info'" x1="12" y1="16" x2="12" y2="12" /><line v-if="type === 'info'" x1="12" y1="8" x2="12.01" y2="8" />
      <path v-if="type === 'warning'" d="M10.29 3.86L1.82 18a2 2 0 0 0 1.71 3h16.94a2 2 0 0 0 1.71-3L13.71 3.86a2 2 0 0 0-3.42 0z" /><line v-if="type === 'warning'" x1="12" y1="9" x2="12" y2="13" /><line v-if="type === 'warning'" x1="12" y1="17" x2="12.01" y2="17" />
      <circle v-if="type === 'danger'" cx="12" cy="12" r="10" /><line v-if="type === 'danger'" x1="15" y1="9" x2="9" y2="15" /><line v-if="type === 'danger'" x1="9" y1="9" x2="15" y2="15" />
      <circle v-if="type === 'tip'" cx="12" cy="12" r="10" /><polyline v-if="type === 'tip'" points="9 12 12 15 16 10" />
      <circle v-if="type === 'success'" cx="12" cy="12" r="10" /><polyline v-if="type === 'success'" points="9 12 12 15 16 10" />
      <line v-if="type === 'exercise'" x1="18" y1="2" x2="22" y2="6" /><path v-if="type === 'exercise'" d="M7.5 20.5L19 9l-4-4L3.5 16.5 2 22z" />
    </svg>
    <div class="callout-content">
      <slot />
    </div>
  </div>
</template>

<script setup>
import { computed } from 'vue'

const props = defineProps({
  type: { type: String, default: 'info' },
  mt: { type: String, default: '2rem' },
  mb: { type: String, default: null },
  pt: { type: String, default: null },
  pb: { type: String, default: null },
})

const spacingStyle = computed(() => {
  const s = {}
  if (props.mt) s.marginTop = props.mt
  if (props.mb) s.marginBottom = props.mb
  if (props.pt) s.paddingTop = props.pt
  if (props.pb) s.paddingBottom = props.pb
  return s
})
</script>

<style scoped>
.callout {
  display: flex;
  align-items: flex-start;
  gap: 12px;
  border-left: 4px solid;
  border-radius: 6px;
  padding: 12px 16px;
  margin: 12px 0;
  font-size: 0.9em;
}

.callout-icon {
  flex-shrink: 0;
  width: 20px;
  height: 20px;
  margin-top: 2px;
  opacity: 0.85;
}

.callout-content {
  flex: 1;
  opacity: 0.9;
}

.callout-content p {
  margin: 0;
}

.callout-info {
  background: rgba(59, 130, 246, 0.08);
  border-color: rgb(59, 130, 246);
  color: rgb(59, 130, 246);
}

.callout-warning {
  background: rgba(202, 138, 4, 0.08);
  border-color: rgb(202, 138, 4);
  color: rgb(202, 138, 4);
}

.callout-danger {
  background: rgba(220, 38, 38, 0.08);
  border-color: rgb(220, 38, 38);
  color: rgb(220, 38, 38);
}

.callout-tip {
  background: rgba(147, 51, 234, 0.08);
  border-color: rgb(147, 51, 234);
  color: rgb(147, 51, 234);
}

.callout-success {
  background: rgba(22, 163, 74, 0.08);
  border-color: rgb(22, 163, 74);
  color: rgb(22, 163, 74);
}

.callout-exercise {
  background: rgba(234, 88, 12, 0.08);
  border-color: rgb(234, 88, 12);
  color: rgb(234, 88, 12);
  padding-bottom: 10px;
}
</style>

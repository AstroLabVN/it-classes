<template>
  <div class="callout" :class="`callout-${type}`" :style="spacingStyle">
    <svg class="callout-icon" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
      <circle v-if="type === 'info'" cx="12" cy="12" r="10" /><line v-if="type === 'info'" x1="12" y1="16" x2="12" y2="12" /><line v-if="type === 'info'" x1="12" y1="8" x2="12.01" y2="8" />
      <path v-if="type === 'warning'" d="M10.29 3.86L1.82 18a2 2 0 0 0 1.71 3h16.94a2 2 0 0 0 1.71-3L13.71 3.86a2 2 0 0 0-3.42 0z" /><line v-if="type === 'warning'" x1="12" y1="9" x2="12" y2="13" /><line v-if="type === 'warning'" x1="12" y1="17" x2="12.01" y2="17" />
      <circle v-if="type === 'danger'" cx="12" cy="12" r="10" /><line v-if="type === 'danger'" x1="15" y1="9" x2="9" y2="15" /><line v-if="type === 'danger'" x1="9" y1="9" x2="15" y2="15" />
      <circle v-if="type === 'tip'" cx="12" cy="12" r="10" /><polyline v-if="type === 'tip'" points="9 12 12 15 16 10" />
      <circle v-if="type === 'success'" cx="12" cy="12" r="10" /><polyline v-if="type === 'success'" points="9 12 12 15 16 10" />
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
  mt: { type: String, default: null },
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
  background: rgba(59, 130, 246, 0.1);
  border-color: rgb(59, 130, 246);
  color: rgb(147, 197, 253);
}
.callout-info .callout-icon { color: rgb(96, 165, 250); }

.callout-warning {
  background: rgba(234, 179, 8, 0.1);
  border-color: rgb(234, 179, 8);
  color: rgb(253, 224, 71);
}
.callout-warning .callout-icon { color: rgb(250, 204, 21); }

.callout-danger {
  background: rgba(239, 68, 68, 0.1);
  border-color: rgb(239, 68, 68);
  color: rgb(252, 165, 165);
}
.callout-danger .callout-icon { color: rgb(248, 113, 113); }

.callout-tip {
  background: rgba(34, 197, 94, 0.1);
  border-color: rgb(34, 197, 94);
  color: rgb(134, 239, 172);
}
.callout-tip .callout-icon { color: rgb(74, 222, 128); }

.callout-success {
  background: rgba(34, 197, 94, 0.1);
  border-color: rgb(34, 197, 94);
  color: rgb(134, 239, 172);
}
.callout-success .callout-icon { color: rgb(74, 222, 128); }
</style>

<script setup>
import { ref, onMounted, onUpdated } from 'vue'

const props = defineProps({
  fontSize:   { type: String, default: '0.85em' },
  lineHeight: { type: String, default: '1.4' },
  maxWidth:   { type: String, default: '100%' },
  padding:    { type: String, default: '0.25rem 0.5rem' },
  cols:       { type: String, default: '' },
})

const wrapper = ref(null)

function applyStyles() {
  if (!wrapper.value) return
  const table = wrapper.value.querySelector('table')
  if (!table) return

  table.style.width = 'auto'
  table.style.maxWidth = props.maxWidth

  if (props.cols) {
    const existing = table.querySelector('colgroup')
    if (existing) existing.remove()

    const colgroup = document.createElement('colgroup')
    props.cols.split(',').forEach(w => {
      const col = document.createElement('col')
      const val = w.trim()
      col.style.width = val.includes('%') ? val : `${val}%`
      colgroup.appendChild(col)
    })
    table.prepend(colgroup)
  }
}

onMounted(applyStyles)
onUpdated(applyStyles)
</script>

<template>
  <div ref="wrapper" class="table-wrapper" :style="{ fontSize, lineHeight }">
    <slot />
  </div>
</template>

<style scoped>
.table-wrapper :deep(td),
.table-wrapper :deep(th) {
  padding: v-bind(padding);
}
</style>

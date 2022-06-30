<template>
  <main>
    <Header />
    <div class="p-2">
      <slot />
    </div>
  </main>
</template>

<script>
import Header from './Header'

export default {
  components: {
    Header
  }
}
</script>

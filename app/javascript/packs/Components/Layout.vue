<template>
  <main>
    <Header />
    <slot />
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

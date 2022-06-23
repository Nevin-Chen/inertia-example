<template>
    <header>
        <Link href="/">Home</Link>
        <Link href="/wishlist">Wish List</Link>
    </header>
</template>

<script>
  import { Link } from '@inertiajs/inertia-vue3'

  export default {
    components: {
      Link
    },
  }
</script>

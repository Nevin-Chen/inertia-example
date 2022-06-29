<template>
  <a href="#" @click="back">Back</a>
</template>

<script>
export default {
  methods: {
    back() {
      window.history.back();
    },
  }
}
</script>

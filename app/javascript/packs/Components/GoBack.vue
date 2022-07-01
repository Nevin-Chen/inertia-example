<template>
  <button class="border-2 border-purple-700 text-purple-700 text-sm hover:border-purple-300 bg-transparent hover:text-purple-500 py-1.5 px-2.5 rounded-md" href="#" @click="back">Back</button>
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

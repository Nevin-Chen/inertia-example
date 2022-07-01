<template>
  <button class="inline-flex justify-center rounded-lg text-sm font-semibold py-1.5 px-2.5 bg-black text-white hover:bg-gray-800 -my-2.5" href="#" @click="back">Back</button>
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

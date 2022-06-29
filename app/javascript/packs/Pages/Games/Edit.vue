<template>
  <form @submit.prevent="form.put('/games/' + game.id)">
    <label for="title">Title:</label>
    <input id="title" v-model="form.title" />
    <label for="genre">Genre:</label>
    <input id="genre" v-model="form.genre" />
    <label for="platform">Platform:</label>
    <input id="platform" v-model="form.platform" />
    <button type="submit" :disabled="form.processing">Submit</button>
  </form>
  <GoBack/>
</template>

<script>
import { useForm } from '@inertiajs/inertia-vue3'
import GoBack from '../../Components/GoBack'

export default {
  components: {
    GoBack
  },
  props: {
    game: Object
  },
  setup (props) {
    const form = useForm({
      title: props.game.title,
      genre: props.game.genre,
      platform: props.game.platform
    })

    return { form }
  }
}
</script>

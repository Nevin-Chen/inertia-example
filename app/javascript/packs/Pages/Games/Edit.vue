<template>
  <form @submit.prevent="form.put('/games/' + game.id)">
    <div class="max-w-md m-2">
      <div class="grid grid-cols-1 gap-8">
        <label class="block" for="title">
          <span class="text-1xl font-bold">Title</span>
        <input id="title" v-model="form.title" type="text" class="
                        mt-1
                        block
                        w-full
                        rounded-md
                        border-gray-900
                        shadow-sm
                        focus:border-purple-300 focus:ring focus:ring-purple-200 focus:ring-opacity-50
                      "/>
        </label>
        <label class="block" for="genre">
          <span class="text-1xl font-bold">Genre</span>
          <input id="genre" v-model="form.genre" type="text" class="
                          mt-1
                          block
                          w-full
                          rounded-md
                          border-gray-900
                          shadow-sm
                          focus:border-purple-300 focus:ring focus:ring-purple-200 focus:ring-opacity-50
                        "/>
        </label>
        <label class="block" for="platform">
          <span class="text-1xl font-bold">Platform</span>
          <input id="platform" v-model="form.platform" type="text" class="
                          mt-1
                          block
                          w-full
                          rounded-md
                          border-gray-900
                          shadow-sm
                          focus:border-purple-300 focus:ring focus:ring-purple-200 focus:ring-opacity-50
                        "/>
        </label>
        <button class="inline-flex justify-center rounded-lg text-sm font-semibold py-1.5 px-2.5 bg-blue-500 text-white hover:bg-blue-300 -mt-2.5 mb-2.5" type="submit" :disabled="form.processing">Submit</button>
        </div> 
        <GoBack/>
    </div>
  </form>
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

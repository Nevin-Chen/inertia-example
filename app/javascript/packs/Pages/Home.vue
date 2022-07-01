<template>
    <div>
        <div class="relative flex items-center">
          <h1 class="inline-block text-3xl font-extrabold text-gray-900 m-4">Games Directory</h1>
          <form @submit.prevent="submit">
						<button class="pointer-events-auto rounded-md bg-blue-900 m-3 py-4 px-5 text-[0.8125rem] font-semibold leading-5 text-white hover:bg-blue-700" type="submit" :disabled="submit.processing">Generate game</button>
					</form>
        </div>
        <div class="relative flex items-center" v-for="game in games" :key="game.id">
            <h3><Link class="px-6 py-4 flex items-center focus:text-blue-700 hover:underline" :href="'/games/' + game.id">{{ game.title }}</Link></h3>
            <div><Link class="inline-flex justify-center rounded-lg text-sm font-semibold py-1.5 px-2.5 bg-purple-500 text-white hover:bg-purple-300 -my-2.5" :href="'/games/' + game.id" method="delete" as="button" type="button">Remove</Link></div>
        </div>
        <Pagination :pagy="pagy"/>
    </div>
</template>

<script>
import { Link } from '@inertiajs/inertia-vue3'
import { Inertia } from '@inertiajs/inertia'
import Pagination from './Shared/Pagination'

export default {
	components: {
		Link,
    Pagination
	},
	props: {
		games: {
			type: Array,
			required: true,
		},
    pagy: {
      type: Object
    }
	},
  setup () {
    function submit() {
      Inertia.post('/games')
    }

    return { submit }
  },
}
</script>

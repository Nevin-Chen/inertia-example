<template>
    <div>
        <h1>Games Directory</h1>
          <form @submit.prevent="submit">
						<button type="submit" :disabled="submit.processing">Generate game</button>
					</form>
        <div v-for="game in games" :key="game.id">
            <h3><Link :href="'/games/' + game.id">{{ game.title }}</Link></h3>
            <div><Link :href="'/games/' + game.id" method="delete" as="button" type="button">Remove</Link></div>
        </div>
    </div>
</template>

<script>
import { Link } from '@inertiajs/inertia-vue3'
import { Inertia } from '@inertiajs/inertia'

export default {
	components: {
		Link
	},
	props: {
		games: {
			type: Array,
			required: true,
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

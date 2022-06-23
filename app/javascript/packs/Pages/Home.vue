<template>
    <div>
        <h1>Games Directory</h1>
          <form @submit.prevent="submit">
						<button type="submit">Generate game</button>
					</form>
        <div v-for="game in games" :key="game.id">
            <h3><Link :href="game.path">{{ game.title }}</Link></h3>
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

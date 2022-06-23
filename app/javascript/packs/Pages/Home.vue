<template>
    <div>
        <h1>Games Directory</h1>
        <div v-for="game in games" :key="game.id">
            <h3><Link :href="game.path">{{ game.title }}</Link></h3>
        </div>
    </div>
</template>

<script>
import { Link } from '@inertiajs/inertia-vue3'

export default {
    components: {
      Link
    },
    props: {
        games: {
            type: Array,
            required: true,
        }
    }
}
</script>

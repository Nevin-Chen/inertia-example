<template>
    <div>
    <h1>{{ game.title }}</h1>
        <table>
            <thead>
                <tr>
                    <th>Genre</th>
                    <th>Platform</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                <tr :key="game.id">
                    <td><span >{{ game.genre }}</span></td>
                    <td><span >{{ game.platform }}</span></td>
                    <td><Link :href="'/games/' + game.id + '/edit'">Edit</Link></td>
                    <td><Link :href="'/games/' + game.id" method="delete" as="button" type="button">Remove</Link></td>
                </tr>
            </tbody>
        </table>
    </div>
</template>

<script>
import { Link } from '@inertiajs/inertia-vue3'

export default {
    components: {
        Link
    },
    props: {
        game: {
            type: Object,
            required: true,
        }
    }
}
</script>

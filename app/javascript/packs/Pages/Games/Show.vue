<template>
    <div>
    <h1 class="inline-block text-3xl font-extrabold text-gray-900 m-4">{{ game.title }}</h1>
        <table class="table-auto">
            <thead>
                <tr>
                    <th class="p-4">Genre</th>
                    <th class="p-4">Platform</th>
                    <th class="p-4">Actions</th>
                </tr>
            </thead>
            <tbody>
                <tr :key="game.id">
                    <td class="p-4"><span >{{ game.genre }}</span></td>
                    <td class="p-4"><span >{{ game.platform }}</span></td>
                    <td class="p-4">
                        <Link class="border-2 border-gray-700 inline-flex justify-center rounded-lg text-sm font-semibold py-1.5 px-2.5 text-black hover:border-gray-400 hover:font-gray-400 -my-2.5 mr-1" :href="'/games/' + game.id + '/edit'">Edit</Link>
                        <Link class="inline-flex justify-center rounded-lg text-sm font-semibold py-1.5 px-2.5 bg-purple-500 text-white hover:bg-purple-300 -my-2.5" :href="'/games/' + game.id" method="delete" as="button" type="button">Remove</Link>
                    </td>
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

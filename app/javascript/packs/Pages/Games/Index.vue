<template>
    <div>
    <h1>Games</h1>
        <table>
            <thead>
                <tr>
                    <th>Title</th>
                    <th>Genre</th>
                    <th>Platform</th>
                </tr>
            </thead>
            <tbody>
                <tr v-for="game in games" :key="game.id">
                    <td><span >{{ game.title }}</span></td>
                    <td><span >{{ game.genre }}</span></td>
                    <td><span >{{ game.platform }}</span></td>
                </tr>
            </tbody>
        </table>
    </div>
</template>

<script>
export default {
    props: {
        games: {
            type: Array,
            required: true,
        }
    }
}
</script>

<template>
    <div>
    <h1>{{ game.title }}</h1>
        <table>
            <thead>
                <tr>
                    <th>Genre</th>
                    <th>Platform</th>
                </tr>
            </thead>
            <tbody>
                <tr :key="game.id">
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
        game: {
            type: Object,
            required: true,
        }
    }
}
</script>

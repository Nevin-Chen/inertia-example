<template>
  <div>
    <h1 class="text-2xl text-center">Games</h1>
    <table class="min-w-max w-full table-auto">
      <thead>
        <tr class="bg-gray-200 text-gray-600 uppercase text-sm leading-normal">
          <th class="py-3 px-6 text-left">Title</th>
          <th class="py-3 px-6 text-left">Genre</th>
          <th class="py-3 px-6 text-center">Platform</th>
        </tr>
      </thead>
      <tbody class="text-gray-600 text-sm font-light">
        <tr v-for="game in games" :key="game.id" class="border-b border-gray-200 hover:bg-gray-100">
          <td class="py-3 px-6 text-left"><span class="font-medium">{{ game.title }}</span></td>
          <td class="py-3 px-6 text-left"><span class="font-medium">{{ game.genre }}</span></td>
          <td class="py-3 px-6 text-left"><span class="font-medium">{{ game.platform }}</span></td>
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

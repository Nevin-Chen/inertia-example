<template>
  <div class="flex items-center justify-center absolute inset-x-0 bottom-5">
    <div v-for="(link, key) in links">
      <div :key="key">
        <Link class="mr-1 px-3 py-2 text-sm border rounded text-gray-900" v-if="link.url === null || link.active">
          {{ link.label }}
        </Link>
        <Link class="mr-1 px-3 py-2 text-sm border rounded text-gray-900 border-gray-400 hover:bg-white" v-else :href="link.url">
          {{ link.label }}
        </Link>
      </div>
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
    pagy: {
      type: Object,
      required: true,
    }
  },

  computed: {
    links() {
      return [
        {
          label: 'First',
          url: this.url(this.pagy.prev === null ? null : this.pagy.first_url[this.pagy.first_url.length - 1]),
        },
        {
          label: 'Previous',
          url: this.url(this.pagy.prev),
        },
        ...this.pagy.series.map(page => {
          return {
            label: page,
            url: this.url(page),
            active: this.active(page),
          }
        }),
        {
          label: 'Next',
          url: this.url(this.pagy.next),
        },
        {
          label: 'Last',
          url: this.url(this.pagy.next === null ? null : this.pagy.last_url[this.pagy.last_url.length - 1]),
        },
      ]
    },
  },

  methods: {
    url(pageNumber) {
      return pageNumber
        ? this.pagy.scaffold_url.replace(/__pagy_page__/, pageNumber)
        : null
    },
    active(pageNumber) {
      return this.pagy.page == pageNumber
    },
  },
}
</script>

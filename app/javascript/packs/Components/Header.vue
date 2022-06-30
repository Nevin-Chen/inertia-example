<template>
    <header>
      <div class="sticky top-0 z-40 w-full backdrop-blur flex-none transition-colors duration-500 lg:z-50 lg:border-b lg:border-slate-900/10 dark:border-slate-50/[0.06] bg-white/95 supports-backdrop-blur:bg-white/60 dark:bg-transparent">
        <div class="max-w-8xl mx-auto">
          <div class="py-4 border-b border-slate-900/10 lg:px-8 lg:border-0 dark:border-slate-300/10 mx-4 lg:mx-0">
            <div class="relative flex items-center">
              <Link class="mr-3 flex-none w-[2.0625rem] overflow-hidden md:w-auto" href="/">Home</Link>
              <div class="relative hidden lg:flex items-center ml-auto">
                <nav class="text-sm leading-6 font-semibold text-slate-700 dark:text-slate-200">
                  <ul class="flex space-x-8">
                    <li>
                      <Link class="hover:text-sky-500 dark:hover:text-sky-400" href="/wishlist">Wish List</Link>
                    </li>
                  </ul>
                </nav>
              </div>
            </div>
          </div>
        </div>
      </div>
    </header>
</template>

<script>
  import { Link } from '@inertiajs/inertia-vue3'

  export default {
    components: {
      Link
    },
  }
</script>

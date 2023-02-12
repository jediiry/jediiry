  <template >
      <div>
          <div class="image-section tw-flex tw-flex-col tw-justify-end tw-h-full">
            <span @click.prevent="$router.push({path:'/hire'})" class="tw-group tw-text-2xl hover:tw-text-white tw-text-complimentry rotate tw-text-right tw-cursor-pointer"
              >Hire Me 
              <!-- <i class="bx group-hover:tw-text-complimentry bx-down-arrow-alt tw-text-primary"></i
            > -->
            
<span class="group-hover:tw-text-complimentry tw-text-primary">&#10230;</span>

          </span>
          </div>
      </div>
  </template>
  <script lang="ts">
  import Vue from 'vue'
  export default Vue.extend({
  })
  </script>
  <style lang="scss">
    .rotate {
    writing-mode: vertical-rl;
  }
  </style>
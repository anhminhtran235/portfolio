<template>
  <div class="card">
    <div class="description">
      <h3 class="header">{{ header }}</h3>
      <p class="content1">{{ content1 }}</p>
      <p class="content2">{{ content2 }}</p>
      <div class="tags">
        <span v-for="(tag, index) in tags" :key="tag" :class="getTagClass(index)">{{ tag }}</span>
      </div>
      <div class="links">
        <a :href="githubUrl" target="_blank" rel="nofollow noopener noreferrer" aria-label="External Link">
          <svg version="1.1" role="img" fill="#888888" xmlns="http://www.w3.org/2000/svg" x="0px" y="0px" viewBox="262 -262 1024 1024"><path d="M774-249.4c-282.9,0-512,229.1-512,512c0,226.6,146.6,417.9,350.1,485.8c25.6,4.5,35.2-10.9,35.2-24.3 c0-12.2-0.6-52.5-0.6-95.4c-128.6,23.7-161.9-31.4-172.2-60.2c-5.8-14.7-30.7-60.2-52.5-72.3c-17.9-9.6-43.5-33.3-0.6-33.9 c40.3-0.6,69.1,37.1,78.7,52.5c46.1,77.4,119.7,55.7,149.1,42.2c4.5-33.3,17.9-55.7,32.6-68.5c-113.9-12.8-233-57-233-252.8 c0-55.7,19.8-101.8,52.5-137.6c-5.1-12.8-23-65.3,5.1-135.7c0,0,42.9-13.4,140.8,52.5c41-11.5,84.5-17.3,128-17.3 c43.5,0,87,5.8,128,17.3c97.9-66.6,140.8-52.5,140.8-52.5c28.2,70.4,10.2,122.9,5.1,135.7c32.6,35.8,52.5,81.3,52.5,137.6 c0,196.5-119.7,240-233.6,252.8c18.6,16,34.6,46.7,34.6,94.7c0,68.5-0.6,123.5-0.6,140.8c0,13.4,9.6,29.4,35.2,24.3 c202.2-67.8,348.8-259.8,348.8-485.8C1286-20.2,1056.9-249.4,774-249.4z"></path></svg>
        </a>
        <a :href="projectUrl" target="_blank" rel="nofollow noopener noreferrer" aria-label="External Link">
          <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 194.818 194.818" x="0px" y="0px" role="img" fill="#888888" width="194.818px" height="194.818px">
            <g>
              <path d="M185.8,2.2l-56.6,0c-4.8,0-9,3.6-9.3,8.4c-0.3,5.2,3.8,9.6,9,9.6h13.5c8.1,0,12.1,9.7,6.4,15.4L78,106.2 c-3.6,3.6-3.8,9.6-0.1,13.1c1.7,1.7,4,2.5,6.2,2.5c2.3,0,4.6-0.9,6.4-2.6l70.9-70.9c5.7-5.7,15.4-1.7,15.4,6.4v13.1 c0,4.8,3.6,9,8.4,9.3c5.2,0.3,9.6-3.8,9.6-9v-57C194.8,6.2,190.8,2.2,185.8,2.2z"></path>
              <path d="M147.7,77.3c-4.5,0.6-7.7,4.7-7.7,9.2c0,14.6,0,59.7,0,79.1c0,5-4.1,9-9,9H27c-5,0-9-4.1-9-9V61.7c0-5,4.1-9,9-9l84.4,0 c4.8,0,9-3.6,9.3-8.4c0.3-5.2-3.8-9.6-9-9.6H9c-5,0-9,4.1-9,9v139.9c0,5,4.1,9,9,9H149c5,0,9-4.1,9-9V86.2 C158,80.8,153.2,76.5,147.7,77.3z"></path>
            </g>
          </svg>
        </a>
      </div>
    </div>
    <div class="media">
      <iframe v-if="mediaType === 'youtube'" class="media-content" :src="mediaUrl" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
      <img v-if="mediaType === 'image'" :src="mediaUrl" :alt="mediaAlt" class="media-content" />
    </div>
  </div>
</template>

<script>
export default {
  props: {
    header: String,
    content1: String,
    content2: String,
    tags: Array,
    githubUrl: String,
    projectUrl: String,
    mediaUrl: String,
    mediaType: String,
    mediaAlt: String,
  },
  methods: {
    getTagClass(index) {
      const colorList = ["purple", "orange", "red", "green"];
      index = index % colorList.length;
      return "tag " + colorList[index];
    },
  },
};
</script>

<style scoped lang="scss">
@import "../../styles/_variables.scss";

.card {
  display: flex;
  align-items: center;
  justify-content: center;
  gap: 42px;
  margin-bottom: 100px;

  @media screen and (max-width: 1200px) {
    flex-direction: column-reverse;
    justify-content: center;
    gap: 0;
  }

  & > div {
    max-width: 500px;
    padding: 20px;
    @media screen and (max-width: 1200px) {
      margin: auto;
      text-align: center;
    }
  }

  .description {
    .header {
      font-size: 24px;
      margin-bottom: 20px;
    }

    .content1 {
      margin-bottom: 10px;
    }

    .content2 {
      margin-bottom: 30px;
    }

    .tags {
      margin-bottom: 30px;

      @media screen and (max-width: 520px) {
        display: flex;
        align-content: flex-start;
        align-items: flex-start;
        flex-wrap: wrap;
        justify-content: center;
        gap: 10px;
      }
      .tag {
        font-size: 12px;
        margin-right: 10px;
        font-weight: bold;

        padding: 8px 12px;
        border-radius: 20px;
      }

      .tag.purple {
        background: $purple;
        color: white;
      }

      .tag.orange {
        background: $orange;
        color: black;
      }

      .tag.red {
        background: $red;
        color: white;
      }

      .tag.green {
        background: $green;
        color: black;
      }
    }
  }

  .media {
    width: 100%;
    display: flex;
    justify-content: center;

    .media-content {
      border-radius: 20px;
      width: 100%;
      height: 100%;
      min-height: 300px;
      @media screen and (max-width: 530px) {
        height: auto;
        min-height: 0;
      }
      border: 1px solid grey;
    }
  }

  .links {
    display: flex;
    margin-top: 15px;

    a {
      margin-right: 10px;
      svg {
        width: 24px;
        height: 24px;
      }
    }
  }
}

.card.flex-reverse {
  flex-direction: row-reverse;
  @media screen and (max-width: 1200px) {
    flex-direction: column-reverse;
  }
}
</style>

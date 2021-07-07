<template>
    <h2>Personal Projects</h2>
    <card 
        :header="'lorem5f dlkjds '"
        :content="'lorem31rr32 dsflkdfjsd lkjsfdlk fdsjl dfskj sfdlkj dsflkj fsdlkjlkjlkj dsflk fdsjl dsalkjasd lkjas dlkas jdlkdas jlk dsajlk sdajl kdsajlkds ajl kdasjlkda sj laskdjdas lkj adslk fdskj lfdskj dkfjlf dk jslk sdfj lkj fslkj lkj fdlk jf'"
        :githubUrl="'google.com'"
        :projectUrl="'google.com'"
        :tags="['adsf', 'dsffds', 'fdsfsd']"
        :mediaUrl="'https://www.youtube.com/embed/uUtw6Syic6A'"
        :mediaAlt="'Alt'"
        :mediaType="'youtube'"
    ></card>
    <card
        class="flex-reverse"
        :header="'lorem5f dlkjds '"
        :content="'lorem31rr32 dsflkdfjsd lkjsfdlk fdsjl dfskj sfdlkj dsflkj fsdlkjlkjlkj dsflk fdsjl dsalkjasd lkjas dlkas jdlkdas jlk dsajlk sdajl kdsajlkds ajl kdasjlkda sj laskdjdas lkj adslk fdskj lfdskj dkfjlf dk jslk sdfj lkj fslkj lkj fdlk jf'"
        :githubUrl="'google.com'"
        :projectUrl="'google.com'"
        :tags="['adsf', 'dsffds', 'fdsfsd']"
        :mediaUrl="'https://www.youtube.com/embed/uUtw6Syic6A'"
        :mediaAlt="'Alt'"
        :mediaType="'youtube'"
    ></card>
    <card
        :header="'lorem5f dlkjds '"
        :content="'lorem31rr32 dsflkdfjsd lkjsfdlk fdsjl dfskj sfdlkj dsflkj fsdlkjlkjlkj dsflk fdsjl dsalkjasd lkjas dlkas jdlkdas jlk dsajlk sdajl kdsajlkds ajl kdasjlkda sj laskdjdas lkj adslk fdskj lfdskj dkfjlf dk jslk sdfj lkj fslkj lkj fdlk jf'"
        :githubUrl="'google.com'"
        :projectUrl="'google.com'"
        :tags="['adsf', 'dsffds', 'fdsfsd']"
        :mediaUrl="'https://yehee.github.io/static/dfa15bea4071d2cc71df5b00f96d2b94/f8eb5/screenshot.png'"
        :mediaAlt="'Alt'"
        :mediaType="'image'"
    ></card>
    <card
        class="flex-reverse"
        :header="'lorem5f dlkjds '"
        :content="'lorem31rr32 dsflkdfjsd lkjsfdlk fdsjl dfskj sfdlkj dsflkj fsdlkjlkjlkj dsflk fdsjl dsalkjasd lkjas dlkas jdlkdas jlk dsajlk sdajl kdsajlkds ajl kdasjlkda sj laskdjdas lkj adslk fdskj lfdskj dkfjlf dk jslk sdfj lkj fslkj lkj fdlk jf'"
        :githubUrl="'google.com'"
        :projectUrl="'google.com'"
        :tags="['adsf', 'dsffds', 'fdsfsd']"
        :mediaUrl="'https://yehee.github.io/static/dfa15bea4071d2cc71df5b00f96d2b94/f8eb5/screenshot.png'"
        :mediaAlt="'Alt'"
        :mediaType="'image'"
    ></card>

    <div class="visit-project">
        <a>VISIT PROJECT ON GITHUB</a>
    </div>
</template>

<script>
import Card from './Card.vue';
export default {
    components: {
        Card
    }
}
</script>

<style scoped lang="scss">
    @import '../../styles/_variables.scss';

    h2 {
        font-size: 30px;
        text-align: center;
        margin-top: 60px;
        margin-bottom: 100px;
    }

    .visit-project {
        margin-top: 70px;
        display: flex;
        justify-content: center;

        a {
            color: white;
            font-weight: bold;
            background: $purple;
            padding: 20px 30px;
            border-radius: 12px;

            &:hover {
                cursor: pointer;
                color: $orange;
            }
        }
    }

</style>
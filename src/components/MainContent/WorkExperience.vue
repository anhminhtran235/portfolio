<template>
  <h2 id="work-experience">Work Experience</h2>
  <section id="timeline">
    <ul>
      <li>
        <div class="card">
          <h3 class="company">Google (May 2022 - August 2022)</h3>
          <p class="position">Google Slides SWE Intern - New York</p>
          <p class="info"><span class="checkmark">✔</span> Successfully built the Pen tool in Google Slides presentation</p>
          <p class="info"><span class="checkmark">✔</span> Went through multiple UX, Engineering, Product, and Accessibility reviews and got approved for a global launch</p>
          <p class="info"><span class="checkmark">✔</span> Implemented the ability to change the pen color, undo/redo, and persist drawings on each slide</p>
          <p class="info"><span class="checkmark">✔</span> Developed a selective re-rendering algorithm, improving the rendering speed of the Pen tool by 1000%</p>
          <p class="info"><span class="checkmark">✔</span> Authored 3 design docs outlining the project's code architecture and optimization strategy</p>
        </div>
      </li>
      <li>
        <div class="card">
          <h3 class="company">Google (May 2022 - August 2022)</h3>
          <p class="position">Google Cloud SWE Intern - Waterloo</p>
          <p class="info"><span class="checkmark">✔</span> Deployed a productionized GraphQL and Java middle tier to improve UI latency and reduce client-side code complexity</p>
          <p class="info"><span class="checkmark">✔</span> Designed and implemented a GraphQL schema to condense HTTP requests, reducing operation latency by 25-50%</p>
          <p class="info"><span class="checkmark">✔</span> Reduced the amount of data transmitted over the network by 50-80% with GraphQL declarative data fetching approach</p>
          <p class="info"><span class="checkmark">✔</span> Added the ability to roll back Remote Procedure Call failures during a 3-step process, ensuring data consistency</p>
        </div>
      </li>
      <li>
        <div class="card">
          <h3 class="company">Shopify (Jan 2022 - April 2022)</h3>
          <p class="position">Backend Intern - Vancouver</p>
          <p class="info"><span class="checkmark">✔</span> Identified and resolved a data parsing bug to fix more than 3,000 inaccurate HS Code descriptions in 5 languages</p>
          <p class="info"><span class="checkmark">✔</span> Implemented a Ruby script to parse CSVs into readable form, ensuring all 5,613 HS Codes are up-to-date</p>
          <p class="info"><span class="checkmark">✔</span> Built a feature to enforce duty collection, preventing merchants from losing thousands of dollars</p>
          <p class="info"><span class="checkmark">✔</span> Collaborated across teams to add the total duties field to the Dawn theme, benefiting 1000+ merchants and developers</p>
        </div>
      </li>
      <li>
        <div class="card">
          <h3 class="company">Article (May 2021 - Dec 2021)</h3>
          <p class="position">Full-stack developer Intern - Vancouver</p>
          <p class="info"><span class="checkmark">✔</span> Saved Article 4 million dollars in tariffs by adding a mechanism to specify country of sales</p>
          <p class="info"><span class="checkmark">✔</span> Contributed to a product multi-sourcing system to increase vendor diversification, avoiding $57M loss in revenue</p>
          <p class="info"><span class="checkmark">✔</span> Migrated 20+ classes into a microservice, providing more scalability and easier maintenance</p>
          <p class="info"><span class="checkmark">✔</span> Wrote unit and integration tests for the migrated code with over 90% coverage using Junit and Spring Boot Tests</p>
        </div>
      </li>
      <li>
        <div class="card">
          <h3 class="company">Fieldd.co (Nov 2020 - Jan 2021)</h3>
          <p class="position">Part-time Full-stack developer - Vancouver </p>

          <p class="info"><span class="checkmark">✔</span> Integrated email tracking into CRM system with Node.js and AngularJS to track 500+ invoice emails per day</p>
          <p class="info"><span class="checkmark">✔</span> Reduced the loading time of staff profile from 15 seconds to 3-5 seconds using MongoDB projection and pagination</p>
          <p class="info"><span class="checkmark">✔</span> Developed photo messaging feature using Socket.io and REST API to let staff and clients communicate more easily</p>
          <p class="info"><span class="checkmark">✔</span> Implemented email verification feature to avoid spam sign-ups and encourage people to use their real information</p>
        </div>
      </li>
      <li>
        <div class="card">
          <h3 class="company">Langara College (May 2020 - Aug 2020)</h3>
          <p class="position">Math TA - Vancouver</p>
          <p class="info"><span class="checkmark">✔</span> Answered students' questions about the lecture, clarify tough concepts</p>
          <p class="info"><span class="checkmark">✔</span> Gave hints to exercises students find challenging</p>
          <p class="info"><span class="checkmark">✔</span> Supported students from the following classes: Calculus I, Calculus II, Elementary Statistics, Linear Algebra</p>
        </div>
      </li>
    </ul>
  </section>
</template>

<script>
export default {
  mounted() {
    const items = document.querySelectorAll("#timeline li");

    const isInViewport = el => {
      const rect = el.getBoundingClientRect();
      return rect.top >= 0 && rect.left >= 0 && rect.bottom <= (window.innerHeight || document.documentElement.clientHeight) && rect.right <= (window.innerWidth || document.documentElement.clientWidth);
    };

    const run = () =>
      items.forEach(item => {
        if (isInViewport(item)) {
          item.classList.add("show");
        }
      });

    // Events
    window.addEventListener("load", run);
    window.addEventListener("resize", run);
    window.addEventListener("scroll", run);
  },
};
</script>

<style scoped lang="scss">
@import "../../styles/_variables.scss";

h2 {
  text-align: center;
}

h1 {
  font-size: 2.3rem;
}

#timeline {
  color: white;
  overflow-x: hidden;
}

#timeline ul {
  padding: 50px 0;
}

/* Create Line */
#timeline ul li {
  list-style: none;
  position: relative;
  width: 6px;
  margin: 0 auto;
  padding-top: 50px;
  background: $purple;
}

/* Boxes */
#timeline ul li div {
  position: relative;
  bottom: 0;
  width: 400px;
  padding: 1rem;
  background: white;
  color: black;
  border: 3px solid $purple;
  transition: all 0.5s ease-in-out;
  visibility: hidden;
  opacity: 0;
}

/* Right Side */
#timeline ul li:nth-child(odd) div {
  left: 40px;
  transform: translate(200px, 0);
}

/* Left Side */
#timeline ul li:nth-child(even) div {
  left: -434px;
  transform: translate(-200px, 0);
}

/* Dots */
#timeline ul li:after {
  content: "";
  position: absolute;
  left: 50%;
  bottom: 0;
  width: 25px;
  height: 25px;
  background: inherit;
  transform: translateX(-50%);
  border-radius: 50%;
  transition: background 0.5s ease-in-out;
}

/* Arrows Base */
#timeline div:before {
  content: "";
  position: absolute;
  bottom: 5px;
  width: 0;
  height: 0;
  border-style: solid;
  border-radius: 2px;
}

/* Right Side Arrows */
#timeline ul li:nth-child(odd) div:before {
  left: -18px;
  border-width: 8px 16px 8px 0;
  border-color: transparent $purple transparent transparent;
}

/* Left Side Arrows */
#timeline ul li:nth-child(even) div:before {
  right: -18px;
  border-width: 8px 0 8px 16px;
  border-color: transparent transparent transparent $purple;
}

/* Show Boxes */
#timeline ul li.show div {
  transform: none;
  visibility: visible;
  opacity: 1;
}

#timeline ul li.show:after {
  background: $purple;
}

#timeline div {
  border-radius: 12px;
}

@media (max-width: 900px) {
  #timeline ul li div {
    width: 250px;
  }

  #timeline ul li:nth-child(even) div {
    left: -284px;
  }
}

@media (max-width: 600px) {
  #timeline ul li {
    margin-left: 20px;
  }

  #timeline ul li div {
    width: calc(100vw - 90px);
  }

  #timeline ul li:nth-child(even) div {
    left: 40px;
  }

  #timeline ul li:nth-child(even) div:before {
    left: -17px;
    border-width: 8px 16px 8px 0;
    border-color: transparent $purple transparent transparent;
  }
}

.position {
  font-style: italic;
  font-size: 14px;
  margin-bottom: 5px;
}

.info {
  margin-bottom: 3px;
}

.checkmark {
  color: $purple;
}

h2 {
  font-size: 30px;
}
</style>

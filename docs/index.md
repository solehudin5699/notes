---
hide:
  - navigation
  - toc
  - path
  - footer

template: homepage.html
---

<style>
  .md-typeset h1,
  .md-content__button {
    display: none;
  }
  .md-typeset .admonition.quote {
    border-radius: 20px;
    width: 500px;
    text-align: center;
    position: relative;
    z-index: 1;

  }
  @media (max-width: 768px) {
    .md-typeset .admonition.quote {
      width: 100%;
    }
  }

  .md-typeset .admonition.quote .admonition-title {
    padding:8px 12px  
  }
  .md-typeset .admonition.quote .admonition-title::before {
    display: none;
  }

  body[data-md-color-primary='black'] .md-typeset .admonition.quote::before {
    content: "";
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background: linear-gradient(145deg, hsla( 225deg ,15%,14%,0.8), hsla( 225deg ,15%,14%,1));
    border-radius: 50%;
    z-index: -1;
    animation: animate 3s linear infinite;
  }

  @keyframes animate {
    0% {
      transform: scale(0);
    }
    100% {
      transform: scale(2);
      opacity: 0;
    }
  }


  .md-typeset .admonition {
    pointer-events: visible;
  }
  .md-footer{
    z-index: 1;
  }
</style>

<div style="display: flex;align-items: center;gap: 0.75rem;flex-direction:column;justify-content: center;" markdown>
![Profile](./assets/images/favicon.png){ align=left width=200}

!!! quote "Hello World!"

    I'm Solehudin, software development enthusiast especially about frontend development. This web is for notes or documentation usage about software development, tools, or other notes.

</div>

## Notes about

<!-- <div class="grid cards" markdown> -->

!!! success "[Development](/dev/)"

    About software development, like as frontend, backend, devops, etc.

!!! tip "[Tools](/tools/)"

    Contain notes of about tools development.

!!! note "[Blog](/blog/)"

    Blog or other free notes.

<!-- </div> -->

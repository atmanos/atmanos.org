# atmanos.org

AtmanOS compiles ordinary Go programs into images which can be run on a
hypervisor without a conventional operating system.

## Getting Started

Install the project's dependencies with:

```
bin/setup
```

Run the site locally with:

```
bin/server
```

Stylesheets, fonts, images, and JavaScript files go in the `/source/assets/`
directory.

Vendor stylesheets and JavaScripts should go in each of their `/vendor/`
directories.

## Deployment and Hosting

The site is hosted on [Netlify]. It provides SSL, CDN distribution, and
caching.

The website is automatically built and deployed by Netlify from the master
branch, via a GitHub webhook.

  [Netlify]: https://www.netlify.com/

## Development

The site is built with [Middleman], a static site generator. It also uses:

* [Sass (LibSass)](http://sass-lang.com):
  CSS with superpowers
* [Bourbon](http://bourbon.io):
  Sass mixin library
* [Neat](http://neat.bourbon.io):
  Semantic grid for Sass and Bourbon
* [Bitters](http://bitters.bourbon.io):
  Scaffold styles, variables and structure for Bourbon projects.
* [Middleman Live Reload](https://github.com/middleman/middleman-livereload):
  Reloads the page when files change
* [Middleman Deploy](https://github.com/karlfreeman/middleman-deploy):
  Deploy your Middleman build via rsync, ftp, sftp, or git (deploys to Github
  Pages by default)

  [Middleman]: https://middlemanapp.com/

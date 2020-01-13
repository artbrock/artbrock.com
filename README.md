# Arthur Brock's Personal Web Site 

This is the source code repository for [Arthur's web site](http://artbrock.com).  

It uses [Jekyll](http://jekyllrb.com) to produce static HTML pages served out by [GitHub](http://github.com) and currently uses the [Feeling Responsive](https://github.com/Phlow/feeling-responsive) Theme. 

## Install

All dependencies are wrapped in `nix-shell` from [NixOS](https://nixos.org/).

Nix shell is supported on most Linux and Mac OS X machines.

To install:

```shell
curl https://nixos.org/nix/install | sh
```

Then follow the instructions printed at the end of installation.

To develop with `nix-shell` you need to drop into a shell session from within the repository.

```shell
cd /path/to/repository
nix-shell
```

This will detect the `default.nix` file in the root of the repository, build all the dependencies and update the current shell session.

## Nix organisation & commands

All nix config other than the root level `default.nix` file are under the `./nix/*` directory.

The standard `callPackage` pattern is used, which means that each subfolder has its own `default.nix` file to be imported to the top level.

Nix ships a few binaries that wrap simple bash scripts for working with site.

`nix-serve`

Use the development config to watch and serve the jekyll site locally.

`nix-flush`

Flush all jekyll and ruby caches including `./vendor`.

Useful if you suspect something is breaking due to being stale.

## Project structure

### Theme gem

The theme is [Feeling Responsive](https://github.com/Phlow/feeling-responsive).

This theme is _not_ available on rubygems.org.

The `bare-bones-version` branch on github contains a `.gemspec` file which is referenced directly in the project `Gemfile`.

This allows updates to the theme to be managed as a gem.

More details: https://jekyllrb.com/docs/themes/

### Pages

Each top level navigation item other than home (which is `index.html` in the root) has a folder in the repo.

Each folder has a main `index.md` file that uses standard frontmatter jekyll configuration to set the permalink and other metadata/content.

Supporting files may also be located in these folders.

### Collections

Folders prefixed with `_` are mostly collections.

The list of collections can be reviewed and managed in `_config.yml`.

Examples of collections include projects, videos, podcasts, etc.

These are iterated over by the relevant listing pages such as `/projects/index.md`.

To add a new item to a collection simply add a new `.md` file to the collection folder with a valid front matter.

More details: https://jekyllrb.com/docs/collections/

### Assets

#### Theme assets

Static theme assets are all found under `./assets`.

This includes "global" items like the site logo, favicons, etc.

#### Content images

Images referenced in content are found under `./images`.

This is configured in `_config.yml`.

To reference this in a future proof way from with the content of a `.md` file use `{{ site.urlimg }}`.

For example, `./images/foo.jpg` would be `![foo]({{ site.urlimg }}foo.jpg)` in markdown.

### Redirections

Various redirections are maintained to improve both the editorial and end-user experience.

#### Outbound redirections

Many URLs are used in multiple locations around the site.

For example `https://emergingleaderlabs.org` appears in pages, blog content and project collections.

Rather than maintain the same URL many times (fragile) we have a single top-level permalink (e.g. `/emerging-leader-labs`) that has a redirection to the external URL.

If the external URL is ever updated the redirect can be set centrally.

This provides a clear entry point if any of these external sites are to be consolidated into this site.

#### Drupal import redirections

Much of the original content of this site comes from an older Drupal blog.

A script created redirections from the Drupal path system pointing to the jekyll blog pages.

All these redirections can be found under `/redirections/drupal-import`.

In theory these should never need to be changed as neither the jekyll nor drupal paths for ancient content will ever shift.

## Contact form

The contact pages uses a simple Typeform that sends an email to Arthur's main holo.host email for each submission.

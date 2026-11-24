# ATLS 5430 · Design Methods

Coursework site, published with GitHub Pages: **https://dolphinswarm.github.io/atls-5430-design-methods/**

## How it's built

- **Jekyll** (built into GitHub Pages; no Actions workflow required).
- Content is **Markdown**. The theme is [`jekyll-theme-cayman`](https://github.com/pages-themes/cayman), with its page layout overridden in [`_layouts/default.html`](_layouts/default.html) (site link, dark-mode toggle, previous/next week links) and its styles in [`assets/css/style.scss`](assets/css/style.scss).
- The list of weeks lives in [`_data/weeks.yml`](_data/weeks.yml). The home page index and every week's previous/next links are built from it.
- Give images their real size so the page doesn't jump while they load: `![alt](img/photo.jpg){: width="1600" height="900"}`.
- Each week is a **folder** with an `index.md` (write-up) and/or an `index.html` (interactive prototype). Images live in an `img/` subfolder.
- Flowcharts/diagrams can be written as text with [Mermaid](https://mermaid.js.org/): use a fenced ` ```mermaid ` code block in any page. It's rendered client-side (wired up in [`_includes/head-custom.html`](_includes/head-custom.html)) and follows the site's light/dark toggle.

```
_config.yml            site settings + theme
index.md               the hub: the week index
_data/weeks.yml        the list of weeks (home index + previous/next links)
_layouts/default.html  page layout (overrides Cayman's)
_includes/             head scripts (theme toggle, lightbox, Mermaid) + week nav
assets/css/style.scss  style overrides on top of the theme
assets/thumbs/         640x400 thumbnails for the home index
_templates/            starter files (not published)
week-1-magical-interface/
  index.md
  img/
```

## Add a week

1. Make a new folder named `week-N-short-title/`, e.g. `week-7-service-blueprint/`.
2. Copy `_templates/week-template.md` into it as `index.md` and fill it in. Put images in `img/`.
   - Interactive project instead? Drop an `index.html` in the folder. Pages serves it at `/<folder>/`.
3. Add an entry to the bottom of [`_data/weeks.yml`](_data/weeks.yml), and a 640x400 thumbnail to `assets/thumbs/` (e.g. `ffmpeg -i img/photo.jpg -vf "scale=640:400:force_original_aspect_ratio=increase,crop=640:400" assets/thumbs/week-07.jpg`).
4. Commit and push. The site rebuilds in ~1 minute.

## Preview locally (optional)

```bash
bundle install
bundle exec jekyll serve --livereload
# http://localhost:4000/atls-5430-design-methods/
```

## One-time setup

Repo **Settings → Pages → Build and deployment → Source: _Deploy from a branch_ → `main` / `/ (root)`**.

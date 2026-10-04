# ATLS 5430 · Design Methods

Coursework site, published with GitHub Pages: **https://dolphinswarm.github.io/atls-5430-design-methods/**

## How it's built

- **Jekyll** (built into GitHub Pages; no Actions workflow required).
- Content is **Markdown**. The theme is [`jekyll-theme-cayman`](https://github.com/pages-themes/cayman); tweak it in [`assets/css/style.scss`](assets/css/style.scss).
- Each week is a **folder** with an `index.md` (write-up) and/or an `index.html` (interactive prototype). Images live in an `img/` subfolder.
- Flowcharts/diagrams can be written as text with [Mermaid](https://mermaid.js.org/): use a fenced ` ```mermaid ` code block in any page. It's rendered client-side (wired up in [`_includes/head-custom.html`](_includes/head-custom.html)) and follows the site's light/dark toggle.

```
_config.yml            site settings + theme
index.md               the hub: the table of weeks
assets/css/style.scss  style overrides on top of the theme
_templates/            starter files (not published)
week-1-magical-interface/
  index.md
  img/
```

## Add a week

1. Make a new folder named `week-N-short-title/`, e.g. `week-7-service-blueprint/`.
2. Copy `_templates/week-template.md` into it as `index.md` and fill it in. Put images in `img/`.
   - Interactive project instead? Drop an `index.html` in the folder. Pages serves it at `/<folder>/`.
3. Add one row to the bottom of the table in [`index.md`](index.md).
4. Commit and push. The site rebuilds in ~1 minute.

## Preview locally (optional)

```bash
bundle install
bundle exec jekyll serve --livereload
# http://localhost:4000/atls-5430-design-methods/
```

## One-time setup

Repo **Settings → Pages → Build and deployment → Source: _Deploy from a branch_ → `main` / `/ (root)`**.

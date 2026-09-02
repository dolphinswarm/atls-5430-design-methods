# ATLS 5430 · Design Methods

Coursework site, published with GitHub Pages: **https://<username>.github.io/atls-5430-design-methods/**

## How it's built

- **Jekyll** (built into GitHub Pages — no Actions workflow required).
- Content is **Markdown**. The theme is [`jekyll-theme-cayman`](https://github.com/pages-themes/cayman); tweak it in [`assets/css/style.scss`](assets/css/style.scss).
- Each week is a **folder** with an `index.md` (write-up) and/or an `index.html` (interactive prototype). Images live in an `img/` subfolder.

```
_config.yml            site settings + theme
index.md               the hub — the table of weeks
assets/css/style.scss  style overrides on top of the theme
_templates/            starter files (not published)
magical-interface/     week 01
  index.md
  img/
```

## Add a week

1. `cp -r _templates magical-interface-2 && ...` — or just make a new folder, e.g. `service-blueprint/`.
2. Copy `_templates/week-template.md` into it as `index.md` and fill it in. Put images in `img/`.
   - Interactive project instead? Drop an `index.html` in the folder — Pages serves it at `/<folder>/`.
3. Add one row to the table in [`index.md`](index.md), between the `ADD A WEEK` and `END WEEKS` comments.
4. Commit and push. The site rebuilds in ~1 minute.

## Preview locally (optional)

```bash
bundle install
bundle exec jekyll serve --livereload
# http://localhost:4000/atls-5430-design-methods/
```

## One-time setup

Repo **Settings → Pages → Build and deployment → Source: _Deploy from a branch_ → `main` / `/ (root)`**.

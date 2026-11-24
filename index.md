---
title: Design Methods
description: ATLS 5430 · Weekly Coursework, Prototypes, and Design Experiments
---

A running log for **ATLS 5430 · Design Methods**. Each entry below links to that
week's write-up, sketches, and prototypes.

## Weeks

<!-- The list comes from _data/weeks.yml. Add new weeks there. -->
<ol class="week-index">
{%- for w in site.data.weeks %}
  <li class="week-entry">
    <span class="week-num" aria-hidden="true">{{ w.num }}</span>
    <img class="week-thumb" src="{{ w.thumb | relative_url }}" alt="" width="640" height="400"{% if forloop.index > 3 %} loading="lazy"{% endif %}>
    <div class="week-text">
      <h3><a href="{{ w.url | relative_url }}"><span class="sr-only">Week {{ w.num }}: </span>{% if w.wip %}🏗️{% endif %}{{ w.title }}</a></h3>
      <p>{{ w.note }}</p>
    </div>
  </li>
{%- endfor %}
</ol>

(🏗️ = WIP)

---

<small>Source on [GitHub]({{ site.github.repository_url }}).</small>

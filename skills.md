---
layout: single
title: Skills
sidebar:
  nav: character
---

Skills describe types of actions your character might specialize in or out of combat.

<table>
  <tr>
    <th>Name</th>
    <th>Description</th>
  </tr>
{% for skill in site.data.skills %}
  <tr>
    <td>{{ skill[0] }}</td>
    <td>{{ skill[1].brief }}</td>
  </tr>
{% endfor %}
</table>

{% for skill in site.data.skills %}
  <h2 id="{{ skill[0] | slugify }}">{{ skill[0] }}</h2>
  {{ skill[1].description | process }}

  {% for feat in site.data.feats.skill %}
    {% if feat[1].tier == skill[0] %}
      {% include power.html power=feat %}
    {% endif %}
  {% endfor %}
{% endfor %}
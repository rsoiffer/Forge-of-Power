---
layout: single
title: Monsters
sidebar:
  nav: rules
---

Note that the stats below are incomplete.

{% assign items = site.data.monsters %}

<table>
  <tr>
    <th>Name</th>
    <th>Description</th>
  </tr>
  {% for item in items %}
    <tr>
      <td>
        <a href="{{ item[0] | slugify }}.html">{{ item[0] }}</a>
      </td>
      <td>{{ item[1].brief | process_inline }}</td>
    </tr>
  {% endfor %}
</table>

{% for item2 in items %}
  {% include power.html power=item2 %}
{% endfor %}

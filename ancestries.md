---
layout: single
title: Ancestries
sidebar:
  nav: character
---

Note that the stats below are incomplete.

{% assign items = site.data.ancestries %}

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

<!-- {% for item2 in items %}
  {% include item.html item=item2 %}
{% endfor %} -->

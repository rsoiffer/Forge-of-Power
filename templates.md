---
layout: single
title: Templates
sidebar:
  nav: character
---

{% for template in site.data.templates %}
<h3 id="{{ template[0] | slugify }}">{{ template[0] }}</h3>
{{ template[1].base | process }}
<table>
  <tr>
    <th>Level</th>
    <th>Class</th>
    <th>Talent</th>
    <th>Feat / ASI</th>
    <th>Ribbon / Perk</th>
  </tr>
{% for level in template[1].levels %}
  <tr>
    <td>
      {{ forloop.index }}
    </td>
    <td>
      {{ level.class | process_inline }}
    </td>
    <td>
      {{ level.talent | process_inline }}
    </td>
    <td>
      {{ level.feat_asi | process_inline }}
    </td>
    <td>
      {{ level.ribbon_perk | process_inline }}
    </td>
  </tr>
{% endfor %}
</table>
{% endfor %}

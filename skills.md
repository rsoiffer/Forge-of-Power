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
    <td>
      <a href="#{{ skill[0] | slugify }}">{{ skill[0] }}</a>
    </td>
    <td>{{ skill[1].brief }}</td>
  </tr>
{% endfor %}
</table>

{% for skill in site.data.skills %}
  {% include item.html item=skill %}
  
  <h4>{{skill[0]}} Feats</h4>
  <table>
    <tr>
      <th>Name</th>
      <th>Type</th>
      <th>Description</th>
    </tr>
    {% for power in site.data.feats.skill %}
      {% if power[1].tier == skill[0] %}
        <tr>
          <td>
            <a href="feats-combat.html#{{ power[0] | slugify }}">{{ power[0] }}</a>
          </td>
          <td>
            {% unless power[1].type == "Passive" %}
              {% icon {{ power[1].type }} %}
            {% endunless %}
          </td>
          <td>{{ power[1].brief | process_inline }}</td>
        </tr>
      {% endif %}
    {% endfor %}
  </table>
{% endfor %}
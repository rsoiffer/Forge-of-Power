---
layout: single
title: Combat Items
sidebar:
  nav: character
---

You can buy low-quality apparel and weapons at half price. Low-quality items have the [[Fragile]] trait. Low-quality apparel breaks if an attack critically succeeds against your defense. Low-quality weapons break if you critically fail a Strike or spell attack using them.

{% assign items = site.data.equipment.combat.apparel %}

## Apparel

<table>
  <tr>
    <th>Name</th>
    <th>Cost</th>
    <th>Weight</th>
    <th>Description</th>
  </tr>
  {% for item in items %}
    <tr>
      <td>
        <a href="#{{ item[0] | slugify }}">{{ item[0] }}</a>
      </td>
      <td>{{ item[1].tags.cost | process_inline }}</td>
      <td>{{ item[1].tags.weight | process_inline }}</td>
      <td>{{ item[1].brief | process_inline }}</td>
    </tr>
  {% endfor %}
</table>

{% for item2 in items %}
  {% include item.html item=item2 %}
{% endfor %}



{% assign items = site.data.equipment.combat.weapons %}

## Weapons

<table>
  <tr>
    <th>Name</th>
    <th>Cost</th>
    <th>Weight</th>
    <th>Description</th>
  </tr>
  {% for item in items %}
    <tr>
      <td>
        <a href="#{{ item[0] | slugify }}">{{ item[0] }}</a>
      </td>
      <td>{{ item[1].tags.cost | process_inline }}</td>
      <td>{{ item[1].tags.weight | process_inline }}</td>
      <td>{{ item[1].brief | process_inline }}</td>
    </tr>
  {% endfor %}
</table>

{% for item2 in items %}
  {% include item.html item=item2 %}
  
  <h4>{{item2[0]}} Feats</h4>
  <table>
    <tr>
      <th>Name</th>
      <th>Type</th>
      <th>Description</th>
    </tr>
    {% for power in site.data.feats.combat %}
      {% if power[1].tier == item2[0] %}
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

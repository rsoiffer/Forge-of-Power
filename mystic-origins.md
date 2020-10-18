---
layout: single
title: Mystic Origins
sidebar:
  nav: character
---

When you learn your first spell, you choose one mystic origin from the list below. Your mystic origin determines your Magic and Mana stats, and gives you unique extra bonuses.

{% assign items = site.data.mystic-origins %}

{% for item2 in items %}
  {% include item.html item=item2 %}
{% endfor %}

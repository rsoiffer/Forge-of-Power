---
layout: single
title: Conditions
sidebar:
  nav: rules
---

{% for condition in site.data.conditions %}
### {{ condition[0] }}
{{ condition[1] | process }}
{% endfor %}
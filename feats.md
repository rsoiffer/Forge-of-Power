---
layout: single
title: Feats
sidebar:
  nav: character
---

{% for feat in site.data.feats %}
### {{ feat[0] }}
{{ feat[1] }}
{% endfor %}
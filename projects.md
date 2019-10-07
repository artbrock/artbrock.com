---
layout: page
#
# Content
#
title: "Current projects"
#
# Styling
#
header: no
#
# Metainformation & Customization
#
permalink: /projects/
---

asdfasdf

{% for project in site.projects %}
  <h2>{{ project.title }}</h2>
  <p>{{ project.content | markdownify }}</p>
{% endfor %}

{% for collection in site.collections.projects limit:1000 %}
 {{ collection }}
{% endfor %}

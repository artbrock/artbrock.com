---
layout: page-fullwidth
title: "Projects &amp; collaborations"
header:
 image_fullwidth: header-projects.jpg
permalink: /projects/
---

## Current projects
{% assign sorted = site.projects | reverse %}
{% if current=true %}
{% include _grid-tile.html size=6 media-height=200 object-fit='contain' items=sorted %}
{% endif %}

## Past Projects
{% assign sorted = site.past_projects | reverse %}
{% include _grid-tile.html size=6 media-height=200 object-fit='contain' items=sorted %}

## Other Collaborations (Many Current)
{% assign sorted = site.collaborations | reverse %}
{% include _grid-tile.html size=6 media-height=200 object-fit='contain' items=sorted %}


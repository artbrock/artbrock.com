---
layout: page-fullwidth
title: "Projects &amp; collaborations"
header:
 image_fullwidth: header-projects.jpg
permalink: /projects/
---



## Current projects
{% assign sorted = site.projects | reverse %}
{% include _grid-tile.html size=6 media-height=200 object-fit='contain' items=sorted %}

## Past Projects
{% assign sorted = site.past_projects | reverse %}
{% include _grid-tile.html size=6 media-height=200 object-fit='contain' items=sorted %}

## Other Collaborations (Some Current)
{% assign sorted = site.collaborations | reverse %}
{% include _grid-tile.html size=6 media-height=200 object-fit='contain' items=sorted %}

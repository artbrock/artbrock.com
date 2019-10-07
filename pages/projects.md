---
layout: page-fullwidth
title: "Projects &amp; collaborations"
header:
 image_fullwidth: header-projects.jpg
permalink: /projects/
---

<h2>Current projects</h2>

{% for project in site.projects %}

<div class="large-6 columns">

 <img style="height: 150px; width: 100%; object-fit: contain;" src="{{ site.urlimg }}{{ project.image }}" limit:9999 />

 <h3><a href="{{ project.permalink }}">{{ project.title }}</a></h3>

 {{ project.content }}


<p>&nbsp;</p>
</div>
{% endfor %}

<h2>Collaborations</h2>

{% for collaboration in site.collaborations %}

<div class="large-6 columns">

 <img style="height: 150px; width: 100%; object-fit: contain;" src="{{ site.urlimg }}{{ collaboration.image }}" limit:9999 />

 <h3><a href="{{ collaboration.permalink }}">{{ collaboration.title }}</a></h3>

 {{ collaboration.content }}

<p>&nbsp;</p>
</div>
{% endfor %}

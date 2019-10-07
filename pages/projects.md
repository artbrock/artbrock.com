---
layout: page-fullwidth
#
# Content
#
title: "Projects &amp; collaborations"
#
# Styling
#
header: no
#
# Metainformation & Customization
#
permalink: /projects/
---

<h2>Current projects</h2>

{% for project in site.projects %}

<div class="large-6 columns">

 <img style="height: 200px; width: 100%; object-fit: contain;" src="{{ site.urlimg }}{{ project.image }}" limit:9999 />

 <h3><a href="{{ project.permalink }}">{{ project.title }}</a></h3>

 {{ project.content }}


<p>&nbsp;</p>
</div>
{% endfor %}

<h2>Collaborations</h2>

{% for collaboration in site.collaborations %}

<div class="large-6 columns">

 <img style="height: 200px; width: 100%; object-fit: cover;" src="{{ site.urlimg }}{{ collaboration.image }}" limit:9999 />

 <h3>{{ collaboration.title }}</h3>

 {{ collaboration.content }}

<p>&nbsp;</p>
</div>
{% endfor %}

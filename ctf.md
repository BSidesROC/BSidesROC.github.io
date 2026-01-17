---
layout: default
---

{% if site.data.config.ctf.tbd %}
{:.text-white .mb-2}
# CTF

{:.mb-n1 .text-warning}
## TBD
{% else %}

{% for ctf in site.data.ctf %}
{:.mb-3 .text-white}
# {{ ctf.name }}
<img src="{{ ctf.image.src }}" alt="{{ ctf.name }}" class="{{ ctf.image.class }}" style="{{ ctf.image.style }}">

{% if ctf.register %}
{:.text-white .h1}
{{ ctf.register.message }} <a href="{{ ctf.register.url}}" style="{{ ctf.register.style }}">{{ ctf.register.url }}</a>
{% if ctf.register.blurb %}
{:.h2 .text-white}
{{ ctf.register.blurb }}
{% endif %}
{% endif %}

{{ ctf.blurb }}

{% endfor %}
{% endif %}

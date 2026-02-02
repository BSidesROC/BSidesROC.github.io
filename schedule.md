---
layout: default
---
{:.text-white}
# Schedule
{% if site.data.config.tbd %}
{:.mb-n1 .text-warning}
## TBD
{% else %}
---
layout: default
---
{:.text-white}
# Talks {{ site.data.config.year }}

{% if site.data.speakers %}
The following talks will be offered on Saturday:

{:.h3 .text-white .mb-2}
Date: {{ site.data.config.date }}

{:.table .text-white .mb-2}
| *Presenter*  | *Title*     | *Description* | *Time* |
|--------|-----------------|----------------------|-------|
{%- for speaker in site.data.speakers %}
| [*{{ speaker.name }}*](/speakers#{{ speaker.name | replace: " ", "-" | downcase}}) | {{ speaker.talk.title }} | {{ speaker.talk.abstract }} | {{ speaker.talk.length }} |
{%- endfor %}

{% else %}
{:.mb-n1 .text-warning}
## TBD
{% endif %}
{% endif %}


---
layout: default
---
{:.text-white}
# Talks 2025

The following talks will be offered on Saturday:

{:.h3 .text-white .mb-2}
Date: Saturday March 22, 2025

{:.table .text-white .mb-2}
| *Presenter*  | *Title*     | *Description* | *Time* |
|--------|-----------------|----------------------|-------|
{%- for speaker in site.data.speakers %}
| [*{{ speaker.name }}*](/speakers#{{ speaker.name | replace: " ", "-" | downcase}}) | {{ speaker.talk.title }} | {{ speaker.talk.abstract }} | {{ speaker.talk.length }} |
{%- endfor %}
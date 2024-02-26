---
layout: default
---
{:.text-white}
# Talks 2024

The following talks will be offered on Saturday:

{:.h3 .text-white .mb-2}
Date: Sat, March 23, 2024

{:.table .text-white .mb-2}
| *Presenter*  | *Title*     | *Description* | *Time* |
|--------|-----------------|----------------------|-------|
{%- for speaker in site.data.speakers %}
| [*{{ speaker.name }}*](/speakers#{{ speaker.name | replace: " ", "-" | downcase}}) | {{ speaker.talk.title }} | {{ speaker.talk.abstract }} |  {{ speaker.talk.length }} |
{%- endfor %}
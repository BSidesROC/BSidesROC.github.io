---
layout: default
---
{% if site.data.config.tbd %}
{:.text-white}
# Schedule
{:.mb-n1 .text-warning}
## TBD

{% else %}
{:.text-white}
# Talks {{ site.data.config.year }}

{% if site.data.speakers %}
The following talks will be offered on Saturday:

{:.h3 .text-white .mb-2}
Date: {{ site.data.config.date }}

{% assign groups = site.data.speakers.talks  | sort: 'time_slot.order' | group_by: 'time_slot.display' %}
<table class="table">
<thead>
<tr>
<td>Time Slot</td>
<td>Track 1</td>
<td>Time Slot</td>
<td>Track 2</td>
</tr>
</thead>
<tbody style="font-size: 1.0rem;">
{% for group in groups %}
    <tr>
    {% assign sorted = group.items | sort: 'time_slot.order' %}
    {% for talk in sorted %}
    {% assign id = "" | split: "" %}
    {% assign id_parts = talk.title | replace: '"',"" | split: " " | truncate_words: 3 %}
    {% for part in id_parts %}
    {%   assign p = part | downcase | slice: 0 | split: "" %}
    {%   assign id = id | concat: p %}
    {% endfor %}
    <td>{{ talk.time_slot.display }}</td>
    <td>
        {% if talk.title == "Keynote" or talk.title == "Lunch" %}
          {{ talk.title }}
        {% else %}
          <a href="/talks#{{ id }}">
          {{ talk.title }}
          </a>
        {% endif %}
    </td>
    {% endfor %}
</tr>
{% endfor %}
</tbody>
</table>

{% else %}
{:.mb-n1 .text-warning}
## TBD
{% endif %}
{% endif %}


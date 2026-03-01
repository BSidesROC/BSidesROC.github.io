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
    <td>{{ talk.time_slot.display }}</td><td>{{ talk.title }}</td>
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


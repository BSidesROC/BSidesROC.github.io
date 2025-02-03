---
layout: default
title: Trainings 2024
---

{% if site.data.training.tbd %}
# Trainings

{:.mb-n1 .text-warning}
## TBD

{% else %}
# Trainings {{ site.data.training.year }}

{% if site.data.config.tickets.attendance %}
{:.mb-3}
<h1 class="mb-3 text-white">Get Your Training Tickets <a href="{{ site.data.config.tickets.attendance }}" style="color: green;">Here!</a></h1>
{% endif %}

{:.text-white .mb-n1}
### Training Location: {{ site.data.training.location }}

{:.mb-n1 .text-warning}
Specific classroom details will be sent to ticket holders.

{:.text-white .pt-3}
The following workshops will be offered on Friday, the day before the main conference:

{:.h3 .text-white}
Date: {{ site.data.training.date }}

***

{% for class in site.data.training.classes %}
{:.h5 .text-white .mb-2}

#### {{ class.title }}

{:.h5 .mb-2}
Length: {{ class.time_frame }}


{:.h5}
Instructors:
<ul class="mb-2">
{% for instructor in class.instructors %} 
<li>{{ instructor.name }}</li>
{% endfor %}
</ul>

{{ class.description }}
{% if class.requirements %}
{:.h5 .mb2}
Requirements:

{{ class.requirements }}
{% endif %}

{:.text-white}
{% if class.prices.student %}
{:.text-white}
Price: {{ class.prices.regular }}<br>
Price (Student): {{ class.prices.student }}
{% else %}
Price: {{ class.prices.regular }}
{% endif %}


***
{% endfor %}
{% endif %}



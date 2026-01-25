---
layout: default
title: Trainings
---

{% if site.data.training.tbd %}
{:.text-white .mb-4}
# Training {{ site.data.config.year }}

{:.mb-n1 .text-warning}
## TBD

{% else %}
{:.mb-4 }
# Trainings {{ site.data.training.year }}

{% if site.data.config.tickets.attendance.coming_soon == false %}
{:.mb-4}
<h1 class="mb-3 text-white">Get Your Training Tickets <a href="{{ site.data.config.tickets.attendance }}" style="color: green;">Here!</a></h1>
{% endif %}

{:.text-white .mb-n1}
### Training Location: {{ site.data.training.location }}

{:.text-white .pt-3}
The following workshops will be offered on Friday, the day before the main conference:

{:.h3 .text-white}
Date: {{ site.data.training.date }}

***

{% for class in site.data.training.classes %}
<div class="card mb-3">
  <div class="card-header ">
    <span class="h2 text-warning">{{ class.title }}</span>
    {% for instructor in class.instructors %} 
      <span class="h4 text-white ml-2">{{ instructor.name }}</span>
    {% endfor %}
    <span class="h4 text-white float-right"> {{ class.time_frame }}</span>
  </div>
    <div class="card-body">
    {{ class.description | newline_to_br }}
  </div>
  <div class="card-footer">
    <span class="text-white h2"> Price: </span>
    {% for price in class.prices %}
      {%- if forloop.first -%}
        <span class="h4 text-white text-bold"> {{ price.description }}: {{ price.cost }} </span>
      {%- else -%}
        <span class="h4 text-white text-bold ml-4"> {{ price.description }}: {{ price.cost }} </span>
      {%- endif -%} 
    {% endfor %}
  </div>
</div>

***
{% endfor %}
{% endif %}



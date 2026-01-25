---
layout: default
---
{:.text-white}
{:.text-white .mb-2}
# Trainers
{% if site.data.training.tbd %}
{:.mb-n1 .text-warning}
## TBD
{% else %}

{% assign instructors = "" | split: "," %}
{% for class in site.data.training.classes %}
{%  assign instructors = instructors | concat: class.instructors %}
{% endfor%}

{% assign instructors = instructors | uniq %}

{% for trainer in instructors %}
<div class="card flex-row mb-2 mt-2">
    <div class="card-body">
        <div id="{{ trainer.name | strip | downcase | replace: " ", "_" }}" class="card-title h2 text-warning">
            {{ trainer.name }}
        </div>
        <p class="card-text text-white">
        {{ trainer.bio }}
        </p>
    </div>
</div>
***
{% endfor %}
{% endif %}


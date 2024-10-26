---
layout: default
---
{:.text-white}

{% if site.data.training.tbd %}
{:.text-white .mb-2}
# Trainers

{:.mb-n1 .text-warning}
## TBD
{% else %}
{% for class in site.data.training.classes %}
{% for trainer in class.instructors %}
{:.text-white .mb-2}
### {{ trainer.name }}

{:.mt-n2}
{{ trainer.bio }}

***
{% endfor %}
{% endfor %}
{% endif %}


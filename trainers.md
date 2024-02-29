---
layout: default
---
{:.text-white}
# Trainers

{% for class in site.data.training.classes %}
{% for trainer in class.instructors %}
{:.text-white .mb-2} 
### {{ trainer.name }}

{:.mt-n2}
{{ trainer.bio }}

***
{% endfor %}
{% endfor %}
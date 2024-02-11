---
layout: default
---
{:.text-white}
# Trainers

{% for trainer in site.data.trainers %}
{:.text-white .mb-2} 
### {{ trainer.name }}

{:.mt-n2}
{{ trainer.bio }}

***
{% endfor %}
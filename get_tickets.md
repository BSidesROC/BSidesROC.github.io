---
layout: default
---

{% if site.data.config.tickets.attendance %}
{: .mt-5 }
# Get Your Conference Tickets <a href="{{ site.data.config.tickets.attendance }}" style="color:green;">Here</a>!
{% else %}
{: .mt-5 }
# ~~Get Your Conference Tickets <a href="{{ site.data.config.tickets.attendance }}" style="color:green;">here</a>!~~ <span class="text-white">Now Closed!</span>
{% endif %}

{% if site.data.config.tickets.training %}
{: .mt-5 }
# Get Your Training Tickets <a href="{{ site.data.config.tickets.training }}" style="color:green;">Here</a>!
{% else %}
{: .mt-5 }
# ~~Get Your Training Tickets <a href="#" style="color:green;">here</a>!~~ <span class="text-white">Now Closed!</span>
{% endif %}
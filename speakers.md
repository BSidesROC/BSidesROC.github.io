---
layout: default
---

{:.text-white}
# Keynote - Coming Soon

{% for speaker in site.data.speakers %}
{% if speaker.talk.keynote == false %}
{:.text-white}
## {{ speaker.name }}

{{ speaker.bio }}
{% endif %}
{% endfor %}
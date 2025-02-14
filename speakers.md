---
layout: default
---

{:.text-white}
# Keynote - Moose (@LitMoose)

<img src="/assets/img/moose_headshot_bsides.jpeg" alt="Moose" height="288" width="288"/>

{:.mb-3}
Moose (@LitMoose) is currently the Sr. Engineering Manager of Security Operations for Etsy, having recently left behind 
7 fast-paced years of private and public sector IR consulting, and leading intel and recovery efforts globally. Moose 
has helped countless organizations, agnostic of size and industry vertical, to evict eCrime and state-sponsored
adversaries, and retrospectively architect security solutions at scale. Moose holds a Master's Degree in Cybersecurity
with a focus on Digital Forensics, and a previous background in systems and network administration, QA testing, and of 
course, hacking. She has been a featured speaker for DEFCON, SANS, Magnet Forensics, Fal.Con, DerbyCon, ShmooCon, 
Circle City Con, HushCon, as well as multiple security podcasts.

{% for speaker in site.data.speakers %}
{% if speaker.talk.keynote == false %}
{:.text-white}
## {{ speaker.name }}

{{ speaker.bio }}
{% endif %}
{% endfor %}
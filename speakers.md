---
layout: default
---

{:.text-white}
# Keynote - Marcelle Lee

<img src="/assets/img/2024-keynote-marcelle-lee.jpg" alt="Marcelle Lee" height="374px" width="242px"/>

{:.mb-3}
Marcelle Lee is the lead for threat research and operations at Equinix, and is also an adjunct professor and training 
consultant.  She specializes in security research and digital forensics. She has been  involved with many industry 
organizations, working groups, and boards, including the Women’s Society of Cyberjutsu, the NIST Cyber Competitions 
Working Group, and the Cybersecurity Association of Maryland Advisory Council.  She also both builds and participates 
in cyber competitions.

{:.mb-3}
Marcelle has earned the CISSP, GCFA, GCIA, GCIH, GPEN, GISF, GSEC, GCCC, C|HFI, C|EH, CSX-P, CCNA, PenTest+, Security+, Network+, and ACE industry certifications.
She holds four degrees, including a master’s degree in cybersecurity. She has received the Chesapeake Regional Tech 
Council Women in Tech (WIT) Award and the Volunteer of the Year award from the Women’s Society of Cyberjutsu. 
Marcelle frequently presents at conferences and training events, and is an active volunteer in the cybersecurity community.


info.marcellelee.com<br/>
medium.com/@marcellelee<br/>
linkedin.com/in/marcellelee<br/>
twitter.com/marcellelee<br/>
infosec.exchange/@marcelle<br/>

{% for speaker in site.data.speakers %}
{% if speaker.talk.keynote == false %}
{:.text-white}
## {{ speaker.name }}

{{ speaker.bio }}
{% endif %}
{% endfor %}
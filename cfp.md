---
layout: default
---

{% if site.data.config.cfp.url %}
{:.mb-3 .text-white}
# \*** [Click Here to Submit!]({{ site.data.config.cfp.url }}) **\*

{:.text-white .text-center}
#### BSidesROC is looking for presenters for our 2026 event.

{:.mt-3 .text-white}
#### IMPORTANT DATES
- CFP Closes: 01/16/2026
- CFP Responses Sent: 02/07/2026

{:.text-white}
#### Presentations
- 20 or 50 minute presentations

{:.text-white}
We are generally looking for any kind of security/hacking related talks. But specifically to match our theme, we’d love to see presentations regarding:

{:.mt-n3}
- Cryptography
- Secure Communications
- Secure Desktops/OS
- Privacy
- Anonymity/Pseudonymity
- Embedded Systems or IoT
- Mobile (OS, application, baseband, etc.)
- Application Security
- Network Penetration Testing
- DFIR
- Hacker Community and infosec industry perspectives
- Tool release
- Hacking all the things

{:.text-white}
Our team will review any talk submission but our only rule is that we will not accept a talk about a service or product you or your employer is selling. Please make all talks technical in nature.

{:.text-white}
If you have a talk and don't think it will fit with the list, submit it anyway, We love obscure content that might just what we are looking for!
The name and photo associated with your Google account will ****be recorded when you upload files and submit this form.

{% elsif site.data.config.cfp.closed %}
{:.text-white .text-center}
{:.mb-3 .text-white}
# BSidesROC Call For Presenters Closed!
Thank you so much for expressing an interest in being a presenter at BSidesRoc, unfortunately submissions are now closed.
Please check back next year!

{% else %}
  
{:.mb-3 .text-white}
# BSidesROC Call For Presenters

{:.text-white .text-center}
# \*** Coming Soon! **\*

{% endif %}



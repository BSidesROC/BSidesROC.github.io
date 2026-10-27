---
layout: default
---
{% if site.data.config.tbd %}

{:.text-white}
# Speakers

{:.mb-n1 .text-warning}
## TBD
{% else %}
<div class="card flex-row mb-2 mt-2 bg-light pb-4">
    <img class="card-img-left ml-4 mt-4 align-center" src="/assets/img/nicole_schwartz_headshot.jpg" alt="circuitswan" style="width:250px;"/>
    <div class="card-body">
        <div id="keynote" class="card-title h2 text-warning">
            Nicole Schwartz (a.k.a CircuitSwan)
        </div>
        <p class="card-text text-dark">
            Nicole Schwartz (a.k.a. CircuitSwan) currently focuses on Open Source Software (OSS), supply chain security, and diversity and inclusion.
            She is a Staff Product Manager at Anaconda, a researcher at The Internet of Dongs, a Director for The Diana Initiative, and an organizer of BSides Edmonton and Skytalks.
            She lives in Edmonton, Alberta, Canada, with her partner, 2 tuxedo cats, and a giant rabbit.
            She holds a Master of Science in Information Technology from Clarkson University.
        </p>
    </div>
</div>
{% for speaker in site.data.speakers.speakers %}
{% if speaker.keynote == false %}
<div class="card flex-row mb-2 mt-2">
    <div class="card-body">
        <div id="{{ speaker.name | strip | downcase | replace: " ", "_" }}" class="card-title h2 text-warning">
            {{ speaker.name }}
        </div>
        <p class="card-text text-white">
        {{ speaker.bio }}
        </p>
    </div>
</div>
{% endif %}
{% endfor %}

{% endif %}

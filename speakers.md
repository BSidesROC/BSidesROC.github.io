---
layout: default
---

<div class="card flex-row mb-2 mt-2 bg-light pb-4">
    <img class="card-img-left ml-4 mt-4 align-center" src="/assets/img/cassandra_young.png" alt="muteki" style="width:250px;"/>
    <div class="card-body">
        <div id="keynote" class="card-title h2 text-warning">
            Cassandra Young (@muteki)
        </div>
        <p class="card-text text-dark">
        As a Principal Consultant on CrowdStrike's Cloud Technical Advisory team, Cassandra analyzes the organizational security posture of Azure, GCP and Oracle Cloud environments, and leads the development of data collection and analysis tooling. Additionally, she assists the Incident Response team as a technical GCP and OCI SME, and supports strategic advisory and technical tabletop exercises across multiple cloud platforms. In addition to her decade of IT and then cloud security consulting experience, Cassandra also holds a Master’s in Computer Science from the University of Pennsylvania and is a director of Blue Team Village, a nonprofit organization bringing free Blue Team content to the community.
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

{% assign talks = site.data.speakers.talks | where: 'include_in_talks', true %}
{% for talk in talks %}
<div class="card mb-2 mt-2">
    <div class="card-body">
       {% assign id = "" | split: "" %}
       {% assign id_parts = talk.title | replace: '"',"" | split: " " | truncate_words: 3 %}
       {% for part in id_parts %}
       {%   assign p = part | downcase | slice: 0 | split: "" %}
       {%   assign id = id | concat: p %}
       {% endfor %}
        <div id="{{ id }}" class="card-title h2 text-warning">
            {{ talk.title }}
        </div>
        <p class="card-text text-white">
        {{ talk.abstract | newline_to_br }}
        </p>
    </div>
    <div class="card-footer text-white">
    Presenter(s):
    {% for presenter in talk.presenters %}
    <span class="h5 text-warning">
    <a class="h5 text-warning" href="/speakers#{{ presenter.name | strip | downcase | replace: " ", "_" }}"> {{ presenter.name }} </a>
    </span>    
    {% endfor %}
    </div>
</div>
{% endfor %}

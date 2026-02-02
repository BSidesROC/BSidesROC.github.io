{% for talk in site.data.speakers.talks %}
<div class="card mb-2 mt-2">
    <div class="card-body">
        <div id="{{ speaker.name | strip | downcase | replace: " ", "_" }}" class="card-title h2 text-warning">
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

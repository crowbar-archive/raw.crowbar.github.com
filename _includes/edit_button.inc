{% if page.edit-url != nil and page.edit-url != "" %}
    <a title="Edit this document" class="pull-left" href="{{ page.edit-url }}">
        <span class="btn-label edit-icon"></span>
    </a>
    <!-- <div class="edit-icon">You're a Star!</div> -->
{% endif %}

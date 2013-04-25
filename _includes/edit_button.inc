{% if page.edit-url != nil and page.edit-url != "" %}
    <a title="Edit this document (requires Github Sign-In)" class="pull-left" href="{{ page.edit-url }}">
        <span class="btn-label edit-icon"></span>
    </a>
    <!-- <div class="edit-icon">You're a Star!</div> -->
{% endif %} 

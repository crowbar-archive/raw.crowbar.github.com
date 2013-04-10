    <div class="navbar navbar-fixed-top">
      <div class="navbar-inner">
        <div class="container">
          <a class="brand" href="/home.html"><img src="/images/crowbar-white.png" class="pull-left"></a>
          <div class="navbar-content">
            <ul class="nav">
              <li {% if page.category == "home" %}class="active"{% endif %}>
                <a href="/home.html">Home</a> 
              </li>
              <li {% if page.category == "docs" %}class="active"{% endif %}>
                <a href="/docs/getting-help.html">Docs</a> 
              </li>
              <li {% if page.category == "bugs" %}class="active"{% endif %}>
                <a href="/issues.html">Bugs</a> 
              </li>
              <li {% if page.category == "screenshots" %}class="active"{% endif %}>
                <a href="javascript:void(0);" onclick="alert('Coming Soon')">Screenshots</a> 
              </li>
            </ul>
          </div>
          <a href="http://crowbar.zehicle.com/" class="btn pull-right btn-success btn-large">Download</a>
        </div>
      </div>
    </div>

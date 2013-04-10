
require 'simplehttp'

module Jekyll

  class RemoteContentPost < Post

    def _urlFetcher(url, proxy)
        content = "<h1>Unable to fetch content from URL: " +url+ " </h1>"
        begin
            http = SimpleHttp.new(url)
            if proxy
                puts "Using proxy: " +proxy
                http.set_proxy(proxy)
            end
            content = http.get
        rescue
            raise FatalException.new("Unable to retrieve content from URL: " + url)
        end
        return content + "\n\n"
    end


    def _useProxy(site)
        proxy = nil
        if site.config.has_key?('proxy-server') and site.config['proxy-server'] != ""
            proxy = site.config['proxy-server']
        end
        return proxy
    end
    

    def initialize(site, base, dir, name)
      super(site, base, dir, name)
      @site = site
      @base = base
      @dir = dir
      @name = name

      if self.data.has_key?('content-url')
          content_location = nil
          static_content = self.content
          if self.data.has_key?('add-content')
            content_location = self.data['add-content']
          end

          # clear the content if we have neither top or bottom specified
          if not content_location or content_location == "bottom"
            self.content = ""
          end
          urls = eval(self.data['content-url'])
          urls.each do |url|
            self.content += self._urlFetcher(url, self._useProxy(site))
          end
          if content_location == "bottom"
            self.content += static_content
          end
      end
    end

    def html?
        return true
    end
  end


  class UrlPageGenerator < Generator
    include ::Jekyll
    safe true

    def generate(site)
        site.posts.each do |post|
          #puts post.name + " ============================== "
          site.pages << RemoteContentPost.new(site, site.source, "", post.name)
        end
    end
  end # class
end # module

# How to Generate crowbar.github.com Site

These are the Jekyll files used to create the crowbar.github.com home. These can no longer be hosted directly at crowbar.github.com since this site now uses plugins. This means we're following the [process described here]( http://charliepark.org/jekyll-with-plugins/ ). In order to generate the site please follow these steps:


## 1. Install Jekyll & Dependencies
Note: Some problems were found running these instructions with Ruby 1.9.x. Everything documented here is working under Ruby 1.8.7.
```
gem install RedCloth -v 4.2.9 --no-ri --no-rdoc
gem install rdiscount -v 1.6.8 --no-ri --no-rdoc
gem install maruku -v 0.6.0 --no-ri --no-rdoc
gem install redcarpet -v 2.1.1 --no-ri --no-rdoc
gem install liquid -v 2.4.1 --no-ri --no-rdoc
gem install jekyll -v 0.12.0 --no-ri --no-rdoc
gem install simplehttp
```

## 2. Clone the Raw crowbar.github.com Repo
```
git clone https://github.com/crowbar/raw.crowbar.github.com.git
```

## 3. Set your Proxy
During site generation Jekyll pulls content from external places, therefore it's important that you can reach the internet during site generation. If you're behind a proxy server, edit the _config.yml file and set your proxy details there.


## 4. Generate the Site
```
cd raw.crowbar.github.com
jekyll --pygments --no-lsi --no-server
```

If the site was generate successfully it should now be located in _site.

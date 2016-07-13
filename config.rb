activate :directory_indexes
activate :autoprefixer

set :relative_links, true
set :css_dir, "assets/stylesheets"
set :js_dir, "assets/javascripts"
set :images_dir, "assets/images"
set :fonts_dir, "assets/fonts"
set :layout, "layouts/application"

page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false

helpers do
  def image_url(path)
    prefix = ""

    if config[:host]
      prefix = config[:host] + "/"
    end

    prefix + image_path(path)
  end
end

configure :development do
  activate :livereload
end

configure :build do
  activate :relative_assets

  config[:host] = "http://atmanos.org"
end

activate :deploy do |deploy|
  deploy.build_before = true
  deploy.deploy_method = :git
  deploy.remote = 'production'
  deploy.branch = 'master'
end

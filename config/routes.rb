Forthlight::Application.routes.draw do

  # Root url of the application
  root 'launcher#index'

  #Engines
  mount Auth::Engine, at: "/auth"
  mount CommonDomain::Engine, at: "/common_domain"
  mount Article::Engine, at: "/article"
  mount Member::Engine, at: "/member"
  mount Administration::Engine, at: "/administration"

  get "/blogs" => "blogs#index", as: :blogs
  get "/blog/:id" => "blogs#show", as: :blog
  get "/page/:id" => "pages#show", as: :page
end

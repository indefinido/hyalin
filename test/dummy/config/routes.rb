Rails.application.routes.draw do
  root :to => 'hyalin/messages#new'
  mount Hyalin::Engine => "/hyalin"
end

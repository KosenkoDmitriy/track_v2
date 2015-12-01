Rails.application.routes.draw do
  mount Spree::Core::Engine, at: '/shop'
  mount Alchemy::Engine => '/', as: 'alchemy'
  Spree::Core::Engine.draw_routes
end

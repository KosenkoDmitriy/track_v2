Rails.application.routes.draw do
  mount Spree::Core::Engine, at: '/shop'
  mount Alchemy::Engine => '/', as: 'alchemy'
  Spree::Core::Engine.draw_routes

  # get "maildev" => 'emaildev#index'

  get "welcome" => "application#welcome", path: "/shop/welcome/"
  get "return_order_test" => "application#return_order_test", path: 'shop/return_order_test'
  post "return_order" => "application#return_order", path: 'shop/return_order'

  get "men" => "application#men", path: "/men"
  get "women" => "application#women", path: "/women"

  match "/products", :to => redirect("/men"), via: :get
  match "/womens", :to => redirect("/women"), via: :get

  # post "mailchimp/subscribe" => "mailchimp#subscribe"
  # post "mailchimp/subscribe_footer" => "mailchimp#subscribe_footer"
  # post "mailchimp/notify_me" => "mailchimp#notify_me"

  # resources 'referrals', except: [:delete, :update, :edit]
  # post 'referrals/subscribe' => 'referrals#subscribe', as: :subscribe_referral
  # get 'spreadtheword' => 'referrals#new', as: :create_referral

end

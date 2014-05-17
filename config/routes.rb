Rails.application.routes.draw do

  namespace :forum do
    resources :forums
  end

  root 'forum/forums#index'
end

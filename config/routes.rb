Rails.application.routes.draw do
  devise_for :users, controllers: { sessions: 'app_proxy/users/sessions', :registrations => "app_proxy/users/registrations",
                                    omniauth_callbacks: 'app_proxy/users/omniauth' }
  resources :ideas
  root to: redirect('/ideas')
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

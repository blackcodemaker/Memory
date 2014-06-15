Memory::Application.routes.draw do
  devise_for :users

  resource :settings, only: [:show]
end

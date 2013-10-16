NgdecorSystem::Application.routes.draw do
  LOCALES = /#{I18n.available_locales.join("|")}/

  scope "(:locale)", locale: LOCALES do
    devise_for :users

    resources :users
    resources :customers
  end

  get '/:locale' => 'users#index', locale: LOCALES
  root "users#index"
end

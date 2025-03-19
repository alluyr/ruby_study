Rails.application.routes.draw do
  resources :users
  root 'main#index' # Главная страница приложения

  # Маршруты для страниц
  get 'privacy_policy', to: 'main#privacy_policy', as: 'privacy_policy'
  get 'terms_of_use', to: 'main#terms_of_use', as: 'terms_of_use'  # Добавьте этот маршрут

  get 'help', to: 'main#help', as: 'help'
  get 'contacts', to: 'main#contacts', as: 'contact'
  get 'about', to: 'main#about', as: 'about'

  # Путь для проверки работоспособности приложения
  get 'up' => 'rails/health#show', as: :rails_health_check
end
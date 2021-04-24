Rails.application.routes.draw do
  # devise設定
  devise_for :users
  # トップ設定
  root to: 'homes#top'
  get 'home/about' => 'homes#about'
  # books設定
  resources :books, only:[:create, :index, :show, :edit, :update, :destroy]
  # users設定
  resources :users, only:[:index, :show, :edit, :update]
end

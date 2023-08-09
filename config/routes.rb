Rails.application.routes.draw do
  devise_for :users
  root to: "prototypes#index"
  resources :prototypes do
    resources :comments, only: :create
  end
  resources :users, only: [:show]  # ユーザーの詳細ページに対するルーティングを追加
end




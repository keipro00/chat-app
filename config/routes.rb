Rails.application.routes.draw do
  devise_for :users
  # get 'messages/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # root to: "messages#index"
   root to: "rooms#index"

  
  #ユーザーcontrollerにedut、updateを定義？ 
  resources :users,only:[:edit,:update]
  #定義するcontrollerのファイルは、手動でもターミナルでもどちらでも作成可？

  # この記述は、どうつながっているか再確認
  resources :rooms,only:[:new, :create]

end

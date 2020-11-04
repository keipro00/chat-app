Rails.application.routes.draw do
  get 'messages/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # ①rootはどのようなときに実行される？、②コントローラーとビューを作成するがmessagesコントローラーはターミナルで作成する、Explorerから作成してもうよいの？
  root to: "messages#index"

end

Rails.application.routes.draw do
  get 'todolists/new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'top' => 'homes#top'
  post 'todolists' => 'todolists#create'
  get 'todolists' => 'todolists#index'
  
  #.../todolists/1や.../todolists/3に該当する
  get 'todolists/:id' => 'todolists#show',as:'todolist'
  
  # 編集画面作成するためのアクション
  get 'todolists/:id/edit' => 'todolists#edit',as:'edit_todolist'
  
  # updateアクションのルーティングを追加
  pat 'todolists/:id' => 'todolists#update',as:'update_todolist'
  
  
end

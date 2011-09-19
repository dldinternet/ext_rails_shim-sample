Sample::Application.routes.draw do
  resources :books
  root :to => 'welcome#index'
end

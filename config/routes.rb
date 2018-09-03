Rails.application.routes.draw do
 
  resources :projects
 resources :projects do
   resources :tasks
 end
end

Rails.application.routes.draw do
  root 'pages#home'
  get  '/about' , to: 'pages#about'
  get  '/contact' , to: 'pages#contact'
  get  '/resumes' , to: 'resumes#index'
  get  '/resumes/new' , to: 'resumes#new'
  post '/resumes' , to: 'resumes#create'
  get  '/resumes/:id' , to: 'resumes#show', as: 'resume'
end

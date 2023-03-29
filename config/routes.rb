Rails.application.routes.draw do
  get 'tailwind/index'
  root 'tailwind#index'
  get  '/about' , to: 'pages#about'
  get  '/contact' , to: 'pages#contact'


  get  '/resumes' , to: 'resumes#index'
  get  '/resumes/new' , to: 'resumes#new'
  post '/resumes' , to: 'resumes#create'
  get  '/resumes/:id' , to: 'resumes#show', as: 'resume'
  get  '/resumes/:id/eidt' , to: 'resumes#eidt', as: 'eidt_resume'
  patch '/resumes/:id', to: 'resumes#update'
  delete '/resumes/:id', to: 'resumes#destroy'
end

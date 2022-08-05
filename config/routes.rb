Rails.application.routes.draw do
  # Defines the root path route ("/")
  # root "articles#index"

  namespace 'api' do
  	namespace 'v1' do
  		resources :people
      resources :apartments
  	end
  end
  
end

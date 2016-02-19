Rails.application.routes.draw do
  
  resources :players
  resources :matches
  get 'game/:faction' => 'matches#faction_index'

end

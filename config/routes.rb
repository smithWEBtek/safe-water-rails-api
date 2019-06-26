Rails.application.routes.draw do
  resources :water_systems
  resources :water_system_facilities
  resources :violations
  resources :violation_enf_assocs
  resources :treatments
  resources :service_areas
  resources :lcr_samples
  resources :lcr_sample_results
  resources :geographic_areas
  resources :enforcement_actions
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

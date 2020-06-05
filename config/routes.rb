Rails.application.routes.draw do
	scope :api do
		resources :wather_records, only: %i[index]
	end
end

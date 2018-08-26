Rails.application.routes.draw do
  get "/fortune_url" => 'api/example_pages#fortune_action'
  get "/lotto_url" => 'api/example_pages#lotto_action'
end 
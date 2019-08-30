Rails.application.routes.draw do
  namespace :api do
    get '/my_name' => 'params_games#my_name'
    get '/whats_in_a_name' => 'params_games#check_word'
    get '/string_guess' => 'params_games#string_guess'
    get '/segment_guess/:guess' => 'params_games#segment_guess'
    post '/body_guess' => 'params_games#body_guess'
  end
end

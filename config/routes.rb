Rails.application.routes.draw do

    root 'game#home'
    get '/home', to: redirect('/')
    get '/rock', to: 'game#rock'
    get '/paper', to: 'game#paper'
    get '/scissors', to: 'game#scissors'
  
end

Rails.application.routes.draw do

    root 'application#home'
    get '/home', to: redirect('/')
    get '/rock', to: 'application#rock'
    get '/paper', to: 'application#paper'
    get '/scissors', to: 'application#scissors'
   

end

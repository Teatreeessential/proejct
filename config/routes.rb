Rails.application.routes.draw do
  devise_for :users ,:controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # post '/chat_rooms/:id/chat' => "chat_rooms#chat", as: "chat_chat_room"
root 'user#index'


#유저 라우팅
#유저의 프로필 화면
get '/:user_name/profile' => 'user#profile'
#모든 유저 리스트 및 리스트에서 검색
get '/user/list' => 'user#list'
#유저 프로필 수정
get '/profile/edit' => 'user#edit'
post '/profile/update'  => 'user#update'
#실시간 검색
post '/search' => 'user#search'

#깃헙에서 데이터 받아오기
post '/github' => 'user#github'

#포트폴리오 라우팅
#포트폴리오 등록페이지
get '/portfolio' => 'portfolio#portfolio'
#포트폴리오 등록 로직
post '/portfolio/register' => 'portfolio#register_portfolio'
#포트폴리오 수정페이지
get '/portfolio/edit/:id' => 'portfolio#portfolio_edit'
#포트폴리오 수정로직
post '/portfolio/update/:id' => 'portfolio#portfolio_update'
#포트폴리오 상세보기
get '/portfolio/show/:id' => 'portfolio#portfolio_show'
#포트폴리오 삭제
get '/portfolio/delete/:id' => 'portfolio#portfolio_delete'


#프로젝트 등록 


# resources :users do
#     member do
      
#       #유저한명당 프로필 보여주는곳
#       get '/profile' => 'users#profile'
#       get '/portfolio_delete' => 'users#portfolio_delete'
#       #포트폴리오 수정 페이지(특정해줘야하기 때문에 이곳에)
#       get '/portfolio_edit' => 'users#portfolio_edit'
#       #포트폴리오 상세보기(특정해줘야하기 때문에 이곳에)
#       get '/portfolio_show' => 'users#portfolio_show'
#       #포트폴리오 수정로직 (특정해줘야하기때문에)
#       post '/portfolio_update' =>'users#portfolio_update'
#     end
#     collection do
#       #포트폴리오 작성페이지
#       get '/test' => 'users#test'
#       get '/portfolio' => 'users#portfolio'

#       #포트폴리오 등록로직
#       post '/register_portfolio' => 'users#register_portfolio'
#       get '/repos' => 'users#repos'
#       get '/show' => 'users#show'
#       #실시간 검색
#       post '/search' => 'users#search'
#       #검색버튼을 눌렸을 때 
#       post '/find_partner' => 'users#find_partner'
#       #github랭킹 만들기위한 라우팅
#       post '/github' => 'users#github'
#       #유저의 리스트를 보는 곳
#       get '/list' => 'users#list'
#       #유저 프로필 등록 및 수정
#       post '/register' => 'users#register'
      
      
      
#     end
#   end
end

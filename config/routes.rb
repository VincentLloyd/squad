# == Route Map
#
#                      Prefix Verb   URI Pattern                                 Controller#Action
#     exercise_types_in_users GET    /exercise_types_in_users(.:format)          exercise_types_in_users#index
#                             POST   /exercise_types_in_users(.:format)          exercise_types_in_users#create
#  new_exercise_types_in_user GET    /exercise_types_in_users/new(.:format)      exercise_types_in_users#new
# edit_exercise_types_in_user GET    /exercise_types_in_users/:id/edit(.:format) exercise_types_in_users#edit
#      exercise_types_in_user GET    /exercise_types_in_users/:id(.:format)      exercise_types_in_users#show
#                             PATCH  /exercise_types_in_users/:id(.:format)      exercise_types_in_users#update
#                             PUT    /exercise_types_in_users/:id(.:format)      exercise_types_in_users#update
#                             DELETE /exercise_types_in_users/:id(.:format)      exercise_types_in_users#destroy
#              exercise_types GET    /exercise_types(.:format)                   exercise_types#index
#                             POST   /exercise_types(.:format)                   exercise_types#create
#           new_exercise_type GET    /exercise_types/new(.:format)               exercise_types#new
#          edit_exercise_type GET    /exercise_types/:id/edit(.:format)          exercise_types#edit
#               exercise_type GET    /exercise_types/:id(.:format)               exercise_types#show
#                             PATCH  /exercise_types/:id(.:format)               exercise_types#update
#                             PUT    /exercise_types/:id(.:format)               exercise_types#update
#                             DELETE /exercise_types/:id(.:format)               exercise_types#destroy
#            captain_profiles GET    /captain_profiles(.:format)                 captain_profiles#index
#                             POST   /captain_profiles(.:format)                 captain_profiles#create
#         new_captain_profile GET    /captain_profiles/new(.:format)             captain_profiles#new
#        edit_captain_profile GET    /captain_profiles/:id/edit(.:format)        captain_profiles#edit
#             captain_profile GET    /captain_profiles/:id(.:format)             captain_profiles#show
#                             PATCH  /captain_profiles/:id(.:format)             captain_profiles#update
#                             PUT    /captain_profiles/:id(.:format)             captain_profiles#update
#                             DELETE /captain_profiles/:id(.:format)             captain_profiles#destroy
#                    profiles GET    /profiles(.:format)                         profiles#index
#                             POST   /profiles(.:format)                         profiles#create
#                 new_profile GET    /profiles/new(.:format)                     profiles#new
#                edit_profile GET    /profiles/:id/edit(.:format)                profiles#edit
#                     profile GET    /profiles/:id(.:format)                     profiles#show
#                             PATCH  /profiles/:id(.:format)                     profiles#update
#                             PUT    /profiles/:id(.:format)                     profiles#update
#                             DELETE /profiles/:id(.:format)                     profiles#destroy
#            new_user_session GET    /users/sign_in(.:format)                    devise/sessions#new
#                user_session POST   /users/sign_in(.:format)                    devise/sessions#create
#        destroy_user_session DELETE /users/sign_out(.:format)                   devise/sessions#destroy
#           new_user_password GET    /users/password/new(.:format)               devise/passwords#new
#          edit_user_password GET    /users/password/edit(.:format)              devise/passwords#edit
#               user_password PATCH  /users/password(.:format)                   devise/passwords#update
#                             PUT    /users/password(.:format)                   devise/passwords#update
#                             POST   /users/password(.:format)                   devise/passwords#create
#    cancel_user_registration GET    /users/cancel(.:format)                     devise/registrations#cancel
#       new_user_registration GET    /users/sign_up(.:format)                    devise/registrations#new
#      edit_user_registration GET    /users/edit(.:format)                       devise/registrations#edit
#           user_registration PATCH  /users(.:format)                            devise/registrations#update
#                             PUT    /users(.:format)                            devise/registrations#update
#                             DELETE /users(.:format)                            devise/registrations#destroy
#                             POST   /users(.:format)                            devise/registrations#create
#       new_user_confirmation GET    /users/confirmation/new(.:format)           devise/confirmations#new
#           user_confirmation GET    /users/confirmation(.:format)               devise/confirmations#show
#                             POST   /users/confirmation(.:format)               devise/confirmations#create
#          authenticated_root GET    /                                           home#index
#        unauthenticated_root GET    /                                           devise/sessions#new
#                        root GET    /                                           home#index
#

Rails.application.routes.draw do
  root 'home#index'
  resources :exercise_types_in_users
  resources :exercise_types
  resources :captain_profiles
  resources :profiles
  devise_for :users

  devise_scope :user do
    authenticated :user do
      root 'home#index', as: :authenticated_root
    end

    unauthenticated do
      root 'devise/sessions#new', as: :unauthenticated_root
    end
  end
end

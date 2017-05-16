# == Route Map
#
#                      Prefix Verb   URI Pattern                                               Controller#Action
#           squad_group_types GET    /squad_group_types(.:format)                              squad_group_types#index
#                             POST   /squad_group_types(.:format)                              squad_group_types#create
#        new_squad_group_type GET    /squad_group_types/new(.:format)                          squad_group_types#new
#       edit_squad_group_type GET    /squad_group_types/:id/edit(.:format)                     squad_group_types#edit
#            squad_group_type GET    /squad_group_types/:id(.:format)                          squad_group_types#show
#                             PATCH  /squad_group_types/:id(.:format)                          squad_group_types#update
#                             PUT    /squad_group_types/:id(.:format)                          squad_group_types#update
#                             DELETE /squad_group_types/:id(.:format)                          squad_group_types#destroy
#               squad_members GET    /squad_members(.:format)                                  squad_members#index
#                             POST   /squad_members(.:format)                                  squad_members#create
#            new_squad_member GET    /squad_members/new(.:format)                              squad_members#new
#           edit_squad_member GET    /squad_members/:id/edit(.:format)                         squad_members#edit
#                squad_member GET    /squad_members/:id(.:format)                              squad_members#show
#                             PATCH  /squad_members/:id(.:format)                              squad_members#update
#                             PUT    /squad_members/:id(.:format)                              squad_members#update
#                             DELETE /squad_members/:id(.:format)                              squad_members#destroy
#         search_squad_groups GET    /squad_groups/search(.:format)                            squad_groups#search
#  class_finished_squad_group GET    /squad_groups/:id/class_finished(.:format)                squad_groups#delete_all_members
#   squad_group_squad_members POST   /squad_groups/:squad_group_id/squad_members(.:format)     squad_members#create
#    squad_group_squad_member DELETE /squad_groups/:squad_group_id/squad_members/:id(.:format) squad_members#destroy
#                squad_groups GET    /squad_groups(.:format)                                   squad_groups#index
#                             POST   /squad_groups(.:format)                                   squad_groups#create
#             new_squad_group GET    /squad_groups/new(.:format)                               squad_groups#new
#            edit_squad_group GET    /squad_groups/:id/edit(.:format)                          squad_groups#edit
#                 squad_group GET    /squad_groups/:id(.:format)                               squad_groups#show
#                             PATCH  /squad_groups/:id(.:format)                               squad_groups#update
#                             PUT    /squad_groups/:id(.:format)                               squad_groups#update
#                             DELETE /squad_groups/:id(.:format)                               squad_groups#destroy
#                        root GET    /                                                         home#index
#     exercise_types_in_users GET    /exercise_types_in_users(.:format)                        exercise_types_in_users#index
#                             POST   /exercise_types_in_users(.:format)                        exercise_types_in_users#create
#  new_exercise_types_in_user GET    /exercise_types_in_users/new(.:format)                    exercise_types_in_users#new
# edit_exercise_types_in_user GET    /exercise_types_in_users/:id/edit(.:format)               exercise_types_in_users#edit
#      exercise_types_in_user GET    /exercise_types_in_users/:id(.:format)                    exercise_types_in_users#show
#                             PATCH  /exercise_types_in_users/:id(.:format)                    exercise_types_in_users#update
#                             PUT    /exercise_types_in_users/:id(.:format)                    exercise_types_in_users#update
#                             DELETE /exercise_types_in_users/:id(.:format)                    exercise_types_in_users#destroy
#              exercise_types GET    /exercise_types(.:format)                                 exercise_types#index
#                             POST   /exercise_types(.:format)                                 exercise_types#create
#           new_exercise_type GET    /exercise_types/new(.:format)                             exercise_types#new
#          edit_exercise_type GET    /exercise_types/:id/edit(.:format)                        exercise_types#edit
#               exercise_type GET    /exercise_types/:id(.:format)                             exercise_types#show
#                             PATCH  /exercise_types/:id(.:format)                             exercise_types#update
#                             PUT    /exercise_types/:id(.:format)                             exercise_types#update
#                             DELETE /exercise_types/:id(.:format)                             exercise_types#destroy
#            captain_profiles GET    /captain_profiles(.:format)                               captain_profiles#index
#                             POST   /captain_profiles(.:format)                               captain_profiles#create
#         new_captain_profile GET    /captain_profiles/new(.:format)                           captain_profiles#new
#        edit_captain_profile GET    /captain_profiles/:id/edit(.:format)                      captain_profiles#edit
#             captain_profile GET    /captain_profiles/:id(.:format)                           captain_profiles#show
#                             PATCH  /captain_profiles/:id(.:format)                           captain_profiles#update
#                             PUT    /captain_profiles/:id(.:format)                           captain_profiles#update
#                             DELETE /captain_profiles/:id(.:format)                           captain_profiles#destroy
#                    profiles GET    /profiles(.:format)                                       profiles#index
#                             POST   /profiles(.:format)                                       profiles#create
#                 new_profile GET    /profiles/new(.:format)                                   profiles#new
#                edit_profile GET    /profiles/:id/edit(.:format)                              profiles#edit
#                     profile GET    /profiles/:id(.:format)                                   profiles#show
#                             PATCH  /profiles/:id(.:format)                                   profiles#update
#                             PUT    /profiles/:id(.:format)                                   profiles#update
#                             DELETE /profiles/:id(.:format)                                   profiles#destroy
#            new_user_session GET    /users/sign_in(.:format)                                  devise/sessions#new
#                user_session POST   /users/sign_in(.:format)                                  devise/sessions#create
#        destroy_user_session DELETE /users/sign_out(.:format)                                 devise/sessions#destroy
#           new_user_password GET    /users/password/new(.:format)                             devise/passwords#new
#          edit_user_password GET    /users/password/edit(.:format)                            devise/passwords#edit
#               user_password PATCH  /users/password(.:format)                                 devise/passwords#update
#                             PUT    /users/password(.:format)                                 devise/passwords#update
#                             POST   /users/password(.:format)                                 devise/passwords#create
#    cancel_user_registration GET    /users/cancel(.:format)                                   devise/registrations#cancel
#       new_user_registration GET    /users/sign_up(.:format)                                  devise/registrations#new
#      edit_user_registration GET    /users/edit(.:format)                                     devise/registrations#edit
#           user_registration PATCH  /users(.:format)                                          devise/registrations#update
#                             PUT    /users(.:format)                                          devise/registrations#update
#                             DELETE /users(.:format)                                          devise/registrations#destroy
#                             POST   /users(.:format)                                          devise/registrations#create
#       new_user_confirmation GET    /users/confirmation/new(.:format)                         devise/confirmations#new
#           user_confirmation GET    /users/confirmation(.:format)                             devise/confirmations#show
#                             POST   /users/confirmation(.:format)                             devise/confirmations#create
#          authenticated_root GET    /                                                         home#index
#        unauthenticated_root GET    /                                                         devise/sessions#new
#

Rails.application.routes.draw do
  resources :squad_group_types
  resources :squad_members
  resources :squad_groups do
    get 'search', to: "squad_groups#search", on: :collection
    get 'class_finished', to: "squad_groups#delete_all_members", on: :member
    resources :squad_members, only:[:create,:destroy]
  end
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

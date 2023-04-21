Rails.application.routes.draw do
  devise_for :user, skip: [:password], controllers: {
  registrations: "public/registrations",
  sessions: 'public/sessions'
  }
  devise_for :admin, skip: [:registrations, :password], controllers: {
    sessions: "admin/sessions"
  }
  root to: "homes#top"
  # get 'homes/top'
end

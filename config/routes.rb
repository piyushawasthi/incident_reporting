Rails.application.routes.draw do
  resources 'incidents'
  root 'incidents#new'
  get '*path' => redirect('/')
end

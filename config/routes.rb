Rails.application.routes.draw do
  scope module: :hyalin do
    resource :messages
  end
end

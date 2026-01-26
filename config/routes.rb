Rails.application.routes.draw do
  # 1. まずは個別のJSON用ルートを明示的に開通させる（最強の解決策）
  post '/tasks.json', to: 'tasks#create', defaults: { format: :json }

  # 2. その他の標準ルート
  resources :study_logs
  resources :tasks
  
  root "study_logs#index"
end
Rails.application.routes.draw do
  # Rota para listar todas as tarefas
  get 'tasks', to: 'tasks#index'

  # Rota para exibir o formulário de criação de uma nova tarefa
  get 'tasks/new', to: 'tasks#new', as: :new_task

  # Rota para criar uma nova tarefa quando o formulário é submetido
  post 'tasks', to: 'tasks#create'

  # Rota para exibir os detalhes de uma tarefa específica
  get 'tasks/:id', to: 'tasks#show', as: :task

  # Rota para exibir o formulário de edição de uma tarefa existente
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit_task

  # Rota para atualizar uma tarefa quando o formulário de edição é submetido
  patch 'tasks/:id', to: 'tasks#update'

  # Rota para excluir uma tarefa
  delete 'tasks/:id', to: 'tasks#destroy'

  # Utilizando o helper 'resources' para definir todas as rotas padrão para as tarefas
  resources :tasks
end

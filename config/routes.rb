BudgetAndExpenses::Application.routes.draw do
  resources :ministries, :only => [:index]
  resources :institutions, :only => [:index]
  resources :budget_programs, :only => [:index]
  resources :budget_costs, :only => [:index]
  resources :lsdp_categories, :only => [:index]
  resources :lsdp_tasks, :only => [:index]
  resources :lsdp_operation_results, :only => [:index]
  resources :lsdp_operation_results_times, :only => [:index]
  resources :lsdp_policy_results, :only => [:index]
  resources :lsdp_indicators, :only => [:index]
end

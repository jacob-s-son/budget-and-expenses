class BudgetProgram < ActiveRecord::Base
  has_many :budget_costs, :foreign_key => "programma"
end

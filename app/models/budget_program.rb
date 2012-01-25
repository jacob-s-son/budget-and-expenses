class BudgetProgram < ActiveRecord::Base
  has_many :budget_costs, :foreign_key => "programma"
  belongs_to :ministry, :foreign_key => "ministrija"
end

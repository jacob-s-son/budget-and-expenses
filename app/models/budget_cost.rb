class BudgetCost < ActiveRecord::Base
  belongs_to :budget_program, :foreign_key => "programma"
  has_many :subprograms, :class_name => 'BudgetCost', :foreign_key => "parent"
  belongs_to :subprograms, :class_name => 'BudgetCost', :foreign_key => "parent"
end
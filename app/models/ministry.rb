class Ministry < ActiveRecord::Base
  has_many :institutions, :foreign_key => "padotibas_ministrija"
  has_many :budget_programs, :foreign_key => "ministrija"
  has_and_belongs_to_many :lsdp_categories, :join_table => :lsdp_categories_ministries, :association_foreign_key => "kategorija_id", :foreign_key => 'ministrija_id'
  has_and_belongs_to_many :lsdp_operation_results, :join_table => :lsdp_operation_results_ministries, :association_foreign_key => "rezultats_id", :foreign_key => 'ministrija_id'
end
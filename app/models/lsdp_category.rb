class LsdpCategory < ActiveRecord::Base
  has_and_belongs_to_many :ministries, :join_table => :lsdp_categories_ministries, :foreign_key => "kategorija_id", :association_foreign_key => 'ministrija_id'
  has_many :subcategories, :foreign_key => "vecaks_id", :class_name => "LsdpCategory" 
  belongs_to :parent_category, :foreign_key => "vecaks_id", :class_name => "LsdpCategory"
  has_many :lsdp_tasks, :foreign_key => 'kategorija_id'
  has_many :lsdp_policies, :foreign_key => 'kategorija_id'
end
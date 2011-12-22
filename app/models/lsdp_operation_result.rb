class LsdpOperationResult < ActiveRecord::Base
  has_many :lsdp_indicators, :foreign_key => 'rezultats_id'
  has_many :lsdp_operation_result_time, :foreign_key => 'rezultats_id'
  belongs_to :lsdp_task, :foreign_key => 'uzdevums_id'
  has_and_belongs_to_many :ministries, :join_table => :lsdp_operation_results_ministries, :foreign_key => "rezultats_id", :association_foreign_key => 'ministrija_id'
end
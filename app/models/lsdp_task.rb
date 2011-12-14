class LsdpTask < ActiveRecord::Base
  has_many :lsdp_operation_results, :foreign_key => 'uzdevums_id'
end
class LsdpOperationResultTime < ActiveRecord::Base
  belongs_to :lsdp_task, :foreign_key => 'uzdevums_id'
end
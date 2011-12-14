class LsdpPolicyResult < ActiveRecord::Base
  belongs_to :lsdp_category, :foreign_key => 'kategorija_id'
end
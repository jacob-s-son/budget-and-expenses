class Institution < ActiveRecord::Base
  belongs_to :ministry, :foreign_key => 'padotibas_ministrija'
end
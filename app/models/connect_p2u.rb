class ConnectP2u < ActiveRecord::Base
  belongs_to :user
  belongs_to :project
end

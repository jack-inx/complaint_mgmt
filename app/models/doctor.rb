class Doctor < ActiveRecord::Base
  has_many :notes, :as => :notable
  has_many :issues
end

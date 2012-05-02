class Issue < ActiveRecord::Base
  belongs_to :client
  belongs_to :doctor
  has_many :notes, :as => :notable

  validates :issue_type, :description, :status, :substantiated, :resolution, :presence => true
  ISSUE_TYPE = [
    ['Prep','Prep'],['Doctor','Doctor'],['QA','QA']
  ]
  STATUS = [
    ['New','New'],[ 'Open','Open'],['Closed','Closed']
  ]
end

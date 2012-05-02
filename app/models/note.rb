class Note < ActiveRecord::Base
  attr_accessor :resource_id
  
  belongs_to :notable, :polymorphic => true
end

class Event < ActiveRecord::Base
  has_and_belongs_to_many :user
  validates :title, presence:true
  validates :event_thumb, :numericality => { :greater_than_or_equal_to => 0, :less_than_or_equal_to => 8}
  validates :venue, presence:true
  validates :when_at, presence:true
  validates :total_tickets, :numericality => { :greater_than => 0 }
  validates :available_tickets, :numericality => { :greater_than => -1 }
  
  
end

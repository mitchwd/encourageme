class Letter < ActiveRecord::Base
  belongs_to :user

  enum status: [:pending, :published, :flagged, :hidden] # DB Integers [0: Pending, 1: Published, 2: Flagged, 3: Hidden]

  validates_presence_of :content, :status
end

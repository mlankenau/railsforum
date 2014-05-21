class Forum::Post < ActiveRecord::Base
  belongs_to :thread

  validates :subject, presence:true, length: { minimum: 2 }
  validates :body, presence:true, length: { minimum: 1 }
end

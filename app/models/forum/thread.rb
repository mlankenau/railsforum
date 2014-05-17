class Forum::Thread < ActiveRecord::Base
  belongs_to :forum

  validates :subject, presence: true, length: { minimum: 2 }  
  validates :forum, presence: true
end

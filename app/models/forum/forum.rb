class Forum::Forum < ActiveRecord::Base
  
  # subforum relationship
  has_many :subforums, class_name: "Forum::Forum", foreign_key: "parent_forum_id"
  belongs_to :parentforum, class_name: "Forum::Forum", foreign_key: "parent_forum_id"
  
  # threads relationship
  has_many :threads

  validates :name, presence: true, length: { minimum: 2 }
  

  scope :main_forums, -> { where(parent_forum_id: nil) }

  def thread_count 
    subforums.inject(threads.count) { |sum, subforum| sum + subforum.thread_count }
  end
end

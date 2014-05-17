class Forum::Forum < ActiveRecord::Base
  has_many :subforums, class_name: "Forum::Forum", foreign_key: "parent_forum_id"
  belongs_to :parentforum, class_name: "Forum::Forum", foreign_key: "parent_forum_id"
  validates :name, presence: true, length: { minimum: 2 }

  scope :main_forums, -> { where(parent_forum_id: nil) }
end

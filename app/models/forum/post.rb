class Forum::Post < ActiveRecord::Base
  belongs_to :thread
end

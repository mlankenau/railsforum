class Forum::Thread < ActiveRecord::Base
  belongs_to :forum
end

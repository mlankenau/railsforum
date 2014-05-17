require 'spec_helper'

describe Forum::Thread do
  describe "validations" do
    it "should require a subject with at least 2 characters" do
      forum = Forum::Forum.new(name:'test')
      thread = Forum::Thread.new(forum_id:1, forum: forum)
      expect(thread.valid?).to be(false)
      thread.subject = "a"
      expect(thread.valid?).to be(false)
      thread.subject = "ab"
      expect(thread.valid?).to be(true)
    end

    it "should have a forum assigned" do
      forum = Forum::Forum.new(name:'test')
      thread = Forum::Thread.new(subject: "tralala")
      expect(thread.valid?).to be(false)
      thread.forum = forum
      expect(thread.valid?).to be(true)
    end
  end
end





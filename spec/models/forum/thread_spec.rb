require 'spec_helper'

describe Forum::Thread do

  describe "post relationship" do
    before(:each) do
      @parent = create(:forum)
      @thread1 = create(:thread, forum:@parent)
      @post1 = create(:post, thread: @thread1)
    end

    it "should list the childs" do
      expect(@thread1.posts.count).to be(1)
    end

    it "should be accessible for the child" do
      expect(@post1.thread).to eq(@thread1)
    end
  end


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





require 'spec_helper'

describe Forum::Forum do
  pending "add some examples to (or delete) #{__FILE__}"

  describe "parent child relationship" do
    before(:each) do
      @parent = Forum::Forum.create(name:'parent')
      @sub1 = Forum::Forum.create(name:'child1', parent_forum_id: @parent.id)
      @sub2 = Forum::Forum.create(name:'child2', parent_forum_id: @parent.id)
    end

    it "should list the childs" do
      expect(@parent.subforums.count).to be(2)
    end
  end

  describe "forum relationship" do
    before(:each) do
      @parent = Forum::Forum.create(name:'parent')
      @thread1 = Forum::Thread.create(subject:'something', forum_id:@parent.id)
    end

    it "should list the childs" do
      expect(@parent.threads.count).to be(1)      
    end

    it "should be accessible for the child" do
      expect(@thread1.forum).to eq(@parent)
    end
  end




  describe "validations" do

    it "should require a name with at least 2 characters" do
      forum = Forum::Forum.new
      expect(forum.valid?).to be(false)
      forum.name = "a"
      expect(forum.valid?).to be(false)
      forum.name = "ab"
      expect(forum.valid?).to be(true)
    end
  end

  describe "thread count" do
    before(:each) do
      @parent = Forum::Forum.create(name:'parent')
      @sub1 = Forum::Forum.create(name:'child1', parent_forum_id: @parent.id)
      @thread1 = Forum::Thread.create(subject:'something', forum_id:@parent.id)
      @thread2 = Forum::Thread.create(subject:'something', forum_id:@sub1.id)
    end

    it "should count the number of threads" do
      expect(@sub1.thread_count).to be(1)
    end

    it "should count the number of threads in subforums as well" do
      expect(@parent.thread_count).to be(2)
    end
  end
end

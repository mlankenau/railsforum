require 'spec_helper'

describe Forum::Forum do
  pending "add some examples to (or delete) #{__FILE__}"

  describe "parent child relationship" do
    before(:each) do
      @parent = create(:forum)
      @sub1 = create(:forum, parentforum: @parent)
      @sub2 = create(:forum, parentforum: @parent)
    end

    it "should list the childs" do
      expect(@parent.subforums.count).to be(2)
    end
  end

  describe "forum relationship" do
    before(:each) do
      @parent = create(:forum)
      @thread1 = create(:thread, subject:'something', forum:@parent)
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
      forum = build(:forum, name: nil)
      expect(forum.valid?).to be(false)
      forum = build(:forum, name: 'a')
      expect(forum.valid?).to be(false)
      forum = build(:forum, name: 'ab')
      expect(forum.valid?).to be(true)
    end
  end

  describe "thread count" do
    before(:each) do
      @parent = create(:forum)
      @sub1 = create(:forum, parentforum: @parent)
      @thread1 = create(:thread, forum:@parent)
      @thread2 = create(:thread, subject:'something', forum:@sub1)
    end

    it "should count the number of threads" do
      expect(@sub1.thread_count).to be(1)
    end

    it "should count the number of threads in subforums as well" do
      expect(@parent.thread_count).to be(2)
    end
  end
end

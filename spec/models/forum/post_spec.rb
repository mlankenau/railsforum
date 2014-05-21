require 'spec_helper'

describe Forum::Post do
  describe 'validations' do
    it "should jave a subject" do
      expect(build(:post, subject:nil).valid?).to be(false)
      expect(build(:post, subject:'b').valid?).to be(false)
      expect(build(:post, subject:'ab').valid?).to be(true)
    end

    it "should have a body" do
      expect(build(:post, body:nil).valid?).to be(false)
      expect(build(:post, body:'a').valid?).to be(true)
    end
  end
end

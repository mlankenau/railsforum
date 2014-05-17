require 'spec_helper'

describe "forum/threads/edit" do
  before(:each) do
    @forum_thread = assign(:forum_thread, stub_model(Forum::Thread,
      :creator => 1,
      :subject => "MyString",
      :forum_id => 1
    ))
  end

  it "renders the edit forum_thread form" do
    render

    assert_select "form[action=?][method=?]", forum_thread_path(@forum_thread), "post" do
      assert_select "input#forum_thread_creator[name=?]", "forum_thread[creator]"
      assert_select "input#forum_thread_subject[name=?]", "forum_thread[subject]"
      assert_select "input#forum_thread_forum_id[name=?]", "forum_thread[forum_id]"
    end
  end
end

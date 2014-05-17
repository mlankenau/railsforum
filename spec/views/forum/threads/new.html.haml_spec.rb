require 'spec_helper'

describe "forum/threads/new" do
  before(:each) do
    assign(:forum_thread, stub_model(Forum::Thread,
      :creator => 1,
      :subject => "MyString",
      :forum_id => 1
    ).as_new_record)
  end

  it "renders new forum_thread form" do
    render

    assert_select "form[action=?][method=?]", forum_threads_path, "post" do
      assert_select "input#forum_thread_creator[name=?]", "forum_thread[creator]"
      assert_select "input#forum_thread_subject[name=?]", "forum_thread[subject]"
      assert_select "input#forum_thread_forum_id[name=?]", "forum_thread[forum_id]"
    end
  end
end

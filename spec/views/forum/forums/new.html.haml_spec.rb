require 'spec_helper'

describe "forum/forums/new" do
  before(:each) do
    assign(:forum_forum, stub_model(Forum::Forum,
      :parent_forum_id => 1,
      :name => "MyString",
      :pos => 1,
      :moderator => 1
    ).as_new_record)
  end

  it "renders new forum_forum form" do
    render

    assert_select "form[action=?][method=?]", forum_forums_path, "post" do
      assert_select "input#forum_forum_parent_forum_id[name=?]", "forum_forum[parent_forum_id]"
      assert_select "input#forum_forum_name[name=?]", "forum_forum[name]"
      assert_select "input#forum_forum_pos[name=?]", "forum_forum[pos]"
      assert_select "input#forum_forum_moderator[name=?]", "forum_forum[moderator]"
    end
  end
end

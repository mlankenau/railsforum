require 'spec_helper'

describe "forum/forums/edit" do
  before(:each) do
    @forum_forum = assign(:forum_forum, stub_model(Forum::Forum,
      :parent_forum_id => 1,
      :name => "MyString",
      :pos => 1,
      :moderator => 1
    ))
  end

  it "renders the edit forum_forum form" do
    render

    assert_select "form[action=?][method=?]", forum_forum_path(@forum_forum), "post" do
      assert_select "input#forum_forum_parent_forum_id[name=?]", "forum_forum[parent_forum_id]"
      assert_select "input#forum_forum_name[name=?]", "forum_forum[name]"
      assert_select "input#forum_forum_pos[name=?]", "forum_forum[pos]"
      assert_select "input#forum_forum_moderator[name=?]", "forum_forum[moderator]"
    end
  end
end

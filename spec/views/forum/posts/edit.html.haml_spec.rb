require 'spec_helper'

describe "forum/posts/edit" do
  before(:each) do
    @forum_post = assign(:forum_post, stub_model(Forum::Post,
      :thread_id => 1,
      :subject => "MyString",
      :body => "MyText",
      :author => 1
    ))
  end

  it "renders the edit forum_post form" do
    render

    assert_select "form[action=?][method=?]", forum_post_path(@forum_post), "post" do
      assert_select "input#forum_post_thread_id[name=?]", "forum_post[thread_id]"
      assert_select "input#forum_post_subject[name=?]", "forum_post[subject]"
      assert_select "textarea#forum_post_body[name=?]", "forum_post[body]"
      assert_select "input#forum_post_author[name=?]", "forum_post[author]"
    end
  end
end

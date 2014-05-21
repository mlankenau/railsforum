require 'spec_helper'

describe "forum/posts/new" do
  before(:each) do
    assign(:forum_post, stub_model(Forum::Post,
      :thread_id => 1,
      :subject => "MyString",
      :body => "MyText",
      :author => 1
    ).as_new_record)
  end

  it "renders new forum_post form" do
    render

    assert_select "form[action=?][method=?]", forum_posts_path, "post" do
      assert_select "input#forum_post_thread_id[name=?]", "forum_post[thread_id]"
      assert_select "input#forum_post_subject[name=?]", "forum_post[subject]"
      assert_select "textarea#forum_post_body[name=?]", "forum_post[body]"
      assert_select "input#forum_post_author[name=?]", "forum_post[author]"
    end
  end
end

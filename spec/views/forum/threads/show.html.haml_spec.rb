require 'spec_helper'

describe "forum/threads/show" do
  before(:each) do
    @forum_thread = assign(:forum_thread, stub_model(Forum::Thread,
      :creator => 1,
      :subject => "Subject",
      :forum_id => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Subject/)
    expect(rendered).to match(/2/)
  end
end

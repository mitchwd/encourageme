require 'rails_helper'

RSpec.describe "letters/new", :type => :view do
  before(:each) do
    assign(:letter, Letter.new(
      :content => "MyText",
      :status => 1,
      :read_count => 1,
      :thanks_count => 1,
      :user => nil
    ))
  end

  it "renders new letter form" do
    render

    assert_select "form[action=?][method=?]", letters_path, "post" do

      assert_select "textarea#letter_content[name=?]", "letter[content]"

      assert_select "input#letter_status[name=?]", "letter[status]"

      assert_select "input#letter_read_count[name=?]", "letter[read_count]"

      assert_select "input#letter_thanks_count[name=?]", "letter[thanks_count]"

      assert_select "input#letter_user_id[name=?]", "letter[user_id]"
    end
  end
end

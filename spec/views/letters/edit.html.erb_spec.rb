require 'rails_helper'

RSpec.describe "letters/edit", :type => :view do
  before(:each) do
    @letter = assign(:letter, Letter.create!(
      :content => "MyText",
      :status => 1,
      :read_count => 1,
      :thanks_count => 1,
      :user => nil
    ))
  end

  it "renders the edit letter form" do
    render

    assert_select "form[action=?][method=?]", letter_path(@letter), "post" do

      assert_select "textarea#letter_content[name=?]", "letter[content]"

      assert_select "input#letter_status[name=?]", "letter[status]"

      assert_select "input#letter_read_count[name=?]", "letter[read_count]"

      assert_select "input#letter_thanks_count[name=?]", "letter[thanks_count]"

      assert_select "input#letter_user_id[name=?]", "letter[user_id]"
    end
  end
end

require 'rails_helper'

RSpec.describe "letters/index", :type => :view do
  before(:each) do
    assign(:letters, [
      Letter.create!(
        :content => "MyText",
        :status => 1,
        :read_count => 2,
        :thanks_count => 3,
        :user => nil
      ),
      Letter.create!(
        :content => "MyText",
        :status => 1,
        :read_count => 2,
        :thanks_count => 3,
        :user => nil
      )
    ])
  end

  it "renders a list of letters" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end

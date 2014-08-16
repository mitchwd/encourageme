require 'rails_helper'

RSpec.describe "letters/show", :type => :view do
  before(:each) do
    @letter = assign(:letter, Letter.create!(
      :content => "MyText",
      :status => 1,
      :read_count => 2,
      :thanks_count => 3,
      :user => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(//)
  end
end

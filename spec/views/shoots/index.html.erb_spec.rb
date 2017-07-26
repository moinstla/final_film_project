require 'rails_helper'

RSpec.describe "shoots/index", type: :view do
  before(:each) do
    assign(:shoots, [
      Shoot.create!(
        :name => "Name"
      ),
      Shoot.create!(
        :name => "Name"
      )
    ])
  end

  it "renders a list of shoots" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end

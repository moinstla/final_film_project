require 'rails_helper'

RSpec.describe "shoots/show", type: :view do
  before(:each) do
    @shoot = assign(:shoot, Shoot.create!(
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end

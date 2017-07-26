require 'rails_helper'

RSpec.describe "shoots/edit", type: :view do
  before(:each) do
    @shoot = assign(:shoot, Shoot.create!(
      :name => "MyString"
    ))
  end

  it "renders the edit shoot form" do
    render

    assert_select "form[action=?][method=?]", shoot_path(@shoot), "post" do

      assert_select "input[name=?]", "shoot[name]"
    end
  end
end

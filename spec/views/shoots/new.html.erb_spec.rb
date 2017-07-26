require 'rails_helper'

RSpec.describe "shoots/new", type: :view do
  before(:each) do
    assign(:shoot, Shoot.new(
      :name => "MyString"
    ))
  end

  it "renders new shoot form" do
    render

    assert_select "form[action=?][method=?]", shoots_path, "post" do

      assert_select "input[name=?]", "shoot[name]"
    end
  end
end

require 'spec_helper'

describe "madnesses/edit" do
  before(:each) do
    @madness = assign(:madness, stub_model(Madness,
      :being => "MyString"
    ))
  end

  it "renders the edit madness form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", madness_path(@madness), "post" do
      assert_select "input#madness_being[name=?]", "madness[being]"
    end
  end
end

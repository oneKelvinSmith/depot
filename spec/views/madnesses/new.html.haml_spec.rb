require 'spec_helper'

describe "madnesses/new" do
  before(:each) do
    assign(:madness, stub_model(Madness,
      :being => "MyString"
    ).as_new_record)
  end

  it "renders new madness form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", madnesses_path, "post" do
      assert_select "input#madness_being[name=?]", "madness[being]"
    end
  end
end

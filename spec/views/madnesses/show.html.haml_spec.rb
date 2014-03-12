require 'spec_helper'

describe "madnesses/show" do
  before(:each) do
    @madness = assign(:madness, stub_model(Madness,
      :being => "Being"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Being/)
  end
end

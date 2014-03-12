require 'spec_helper'

describe "madnesses/index" do
  before(:each) do
    assign(:madnesses, [
      stub_model(Madness,
        :being => "Being"
      ),
      stub_model(Madness,
        :being => "Being"
      )
    ])
  end

  it "renders a list of madnesses" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Being".to_s, :count => 2
  end
end

require 'spec_helper'

describe "receipts/index" do
  before(:each) do
    assign(:receipts, [
      stub_model(Receipt,
        :File => "File",
        :Amount => 1,
        :Company => "Company"
      ),
      stub_model(Receipt,
        :File => "File",
        :Amount => 1,
        :Company => "Company"
      )
    ])
  end

  it "renders a list of receipts" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "File".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Company".to_s, :count => 2
  end
end

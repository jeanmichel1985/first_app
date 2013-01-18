require 'spec_helper'

describe "receipts/edit" do
  before(:each) do
    @receipt = assign(:receipt, stub_model(Receipt,
      :File => "MyString",
      :Amount => 1,
      :Company => "MyString"
    ))
  end

  it "renders the edit receipt form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => receipts_path(@receipt), :method => "post" do
      assert_select "input#receipt_File", :name => "receipt[File]"
      assert_select "input#receipt_Amount", :name => "receipt[Amount]"
      assert_select "input#receipt_Company", :name => "receipt[Company]"
    end
  end
end

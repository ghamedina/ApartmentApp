require 'rails_helper'

RSpec.describe "apartments/index", type: :view do
  before(:each) do
    assign(:apartments, [
      Apartment.create!(
        :address1 => "Address1",
        :address2 => "Address2",
        :city => "City",
        :zip => "Zip",
        :state => "State",
        :country => "Country",
        :name => "Name",
        :phone => "Phone",
        :hours => "Hours"
      ),
      Apartment.create!(
        :address1 => "Address1",
        :address2 => "Address2",
        :city => "City",
        :zip => "Zip",
        :state => "State",
        :country => "Country",
        :name => "Name",
        :phone => "Phone",
        :hours => "Hours"
      )
    ])
  end

  it "renders a list of apartments" do
    render
    assert_select "tr>td", :text => "Address1".to_s, :count => 2
    assert_select "tr>td", :text => "Address2".to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => "Zip".to_s, :count => 2
    assert_select "tr>td", :text => "State".to_s, :count => 2
    assert_select "tr>td", :text => "Country".to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
    assert_select "tr>td", :text => "Hours".to_s, :count => 2
  end
end

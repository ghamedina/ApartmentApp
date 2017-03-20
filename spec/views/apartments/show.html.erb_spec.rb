require 'rails_helper'

RSpec.describe "apartments/show", type: :view do
  before(:each) do
    @apartment = assign(:apartment, Apartment.create!(
      :address1 => "Address1",
      :address2 => "Address2",
      :city => "City",
      :zip => "Zip",
      :state => "State",
      :country => "Country",
      :name => "Name",
      :phone => "Phone",
      :hours => "Hours"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Address1/)
    expect(rendered).to match(/Address2/)
    expect(rendered).to match(/City/)
    expect(rendered).to match(/Zip/)
    expect(rendered).to match(/State/)
    expect(rendered).to match(/Country/)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Phone/)
    expect(rendered).to match(/Hours/)
  end
end

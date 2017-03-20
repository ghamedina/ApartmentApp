require 'rails_helper'

RSpec.describe "apartments/edit", type: :view do
  before(:each) do
    @apartment = assign(:apartment, Apartment.create!(
      :address1 => "MyString",
      :address2 => "MyString",
      :city => "MyString",
      :zip => "MyString",
      :state => "MyString",
      :country => "MyString",
      :name => "MyString",
      :phone => "MyString",
      :hours => "MyString"
    ))
  end

  it "renders the edit apartment form" do
    render

    assert_select "form[action=?][method=?]", apartment_path(@apartment), "post" do

      assert_select "input#apartment_address1[name=?]", "apartment[address1]"

      assert_select "input#apartment_address2[name=?]", "apartment[address2]"

      assert_select "input#apartment_city[name=?]", "apartment[city]"

      assert_select "input#apartment_zip[name=?]", "apartment[zip]"

      assert_select "input#apartment_state[name=?]", "apartment[state]"

      assert_select "input#apartment_country[name=?]", "apartment[country]"

      assert_select "input#apartment_name[name=?]", "apartment[name]"

      assert_select "input#apartment_phone[name=?]", "apartment[phone]"

      assert_select "input#apartment_hours[name=?]", "apartment[hours]"
    end
  end
end

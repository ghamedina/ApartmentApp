require 'rails_helper'

RSpec.feature "CoolFeatures", type: :feature do

  context 'Show list of apartments' do
    Steps 'See list' do
      Given 'I am on the list page' do
        visit '/apartments'
      end
      And 'I click the New Apartment button' do
        # user clicks on new apartment link
        click_link 'New Apartment'
        # user fills out address1 field
        fill_in 'Address1', with: '123 Main Street'
        # user fills out address2 field
        fill_in 'Address2', with: 'Apt. 1'
        # user fills out city field
        fill_in 'City', with: 'San Diego'
        # user fills out the state field
        fill_in 'State', with: 'CA'
        #user fills in Name field
        fill_in 'Name', with: 'Joe'
        # user fills in the phone field
        fill_in 'Phone', with: '123-456-7890'
        # user fills in the hours field
        fill_in 'Hours', with: '1pm - 4pm'
        # user clicks create apartment button
        click_button 'Create Apartment'
        # user clicks back to see list of apartments
        click_link 'Back'
      end
      Then 'I can see a list of apartments' do
        expect(page).to have_content("San Diego")
      end
    end
  end
end

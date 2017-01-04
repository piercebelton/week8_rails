require 'rails_helper'

RSpec.feature "LandingPages", type: :feature do
  context 'Going to the website' do
    Steps 'Being Welcomed' do
      Given 'I am on the landing page' do
        visit '/'
      end
      Then 'I am presented with a welcome message' do
        expect(page).to have_content("Welcome to the Registration Page")
      end
    end
  end

  context 'Register' do
    Steps 'I can register' do
      Given 'I am on the registration page' do
        visit '/'
      end
      Then 'I can fill out the registration form' do
        fill_in 'Full Name', with: 'Pierce Belton'
        fill_in 'Street Address', with: '1234 A st'
        fill_in 'City', with: 'Cool Town'
        fill_in 'State', with: 'Awesome'
        fill_in 'Postal Code', with: '56789'
        fill_in 'Country', with: 'USA'
        fill_in 'Email Address', with: 'piercebelton@gmail.com'
        fill_in 'User ID', with: 'pdawg'
        fill_in 'Password', with: '$ecret123'
      end
      And 'I can submit the information' do
        click_button 'Register'
      end
    end
  end

  context 'I can only register if I have only entered a username and password' do
    Steps 'for registering only with username and password' do
      Given 'I am on the registration page' do
        visit '/'
      end
      Then 'I can register with a user ID and password only' do
        fill_in 'User ID', with: 'kdawg'
        fill_in 'Password', with: 'coolpa$5'
        click_button 'Register'
      end
      And 'I am redirected to a confirmation page' do
        expect(page).to have_content("Success! You have registered")
      end
    end
  end

  context 'Logging in' do
    Steps 'for a registered user to log in' do
      Given 'I am on the registration page' do
        visit '/'
      end
      Then 'I can fill out the login fields' do
        fill_in 'Enter User ID', with: 'kdawg'
        fill_in 'Enter Password', with: 'coolpa$5'
        click_button 'Login'
      end
      And 'I am redirected to the home page' do
        expect(page).to have_content("Hello codeninja")
      end
    end
  end

end

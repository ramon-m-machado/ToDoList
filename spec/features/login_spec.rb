require 'rails_helper'

feature 'Visitante loga no sistema' do
  scenario 'com sucesso' do
    visit root_path
    fill_in 'user_email', with: 'a@a.a'
    fill_in 'user_password', with: '123456'
    click_on 'btn_login'

    expect(current_path).to eq('/')
    expect(page).to have_content('Listas')
  end
end
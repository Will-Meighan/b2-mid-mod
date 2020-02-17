require 'rails_helper'

describe 'As a visitor on the studio index page' do

  before :each do
    @studio_1 = Studio.create(name: 'Universal')
    @studio_2 = Studio.create(name: 'Warner Bros')
  end

  it 'I see a list of all studios' do
    within("#studio#{@studio_1.id}") do
      expect(page).to have_content(@studio_1.name)
    end

    within("#studio#{@studio_2.id}") do
      expect(page).to have_content(@studio_2.name)
    end
  end

end

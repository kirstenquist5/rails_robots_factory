require 'rails_helper'

RSpec.describe Robot, type: :model do
  describe 'friendly' do
    it 'greets properly' do

      expect(FactoryBot.create(:robot).greet).to eq.('Hello')
    end

    it 'greets improperly' do
      expect(FactoryBot.create(:robot, friendly: false).greet).to eq.('Die Human!')
  end

end

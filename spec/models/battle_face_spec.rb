require 'spec_helper.rb'

describe BattleFace do
  it "can be made" do
    b =  FactoryGirl.build(:battle_face)
    expect(b.name).to eq('Battler')
  end
end

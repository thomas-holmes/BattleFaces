FactoryGirl.define do
  factory :master_face do
    name "Alice"
    email "alice@example.com"
    password "password"
    password_confirmation "password"
  end

  factory :battle_face do
    name 'Battler'
    level 1
    attack 50
    defense 75
    speed 100
    status :active
    master_face_id :master_face
  end
end

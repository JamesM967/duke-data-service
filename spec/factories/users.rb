FactoryGirl.define do
  factory :user do
    uuid { SecureRandom.uuid }
    etag { SecureRandom.hex }
    email { Faker::Internet.email }
    name { Faker::Name.name }

    trait :system_admin do
      auth_roles ['system_admin']
    end
  end
end
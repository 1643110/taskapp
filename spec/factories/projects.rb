# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :project do |p|
    p.sequence(:title) {|n| "プロジェクト_#{n}" }
    created_at Time.now
    updated_at Time.now
  end
end

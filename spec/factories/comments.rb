FactoryBot.define do
  factory :comment do
    author {"Mike"}
    sequence(:body) { |n| "comment body #{n}" }
    #body {"somthing blabla"}
  end
end
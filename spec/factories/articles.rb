# This will guess the User class
FactoryBot.define do
  factory :article do
    title {"Artice title"}
    text {"Article text"}

    # Создаем фабрику с названием article_with_comments
    # Для создания статьи с несколькими комментариями
    factory :article_with_comments do
      # После создания article 
      after :create do |article, evaluator|
        # Создаем список из 3-х комментариев 
        create_list :comment, 3, article: article
      end
    end
  end
end
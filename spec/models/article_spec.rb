require "spec_helper"

describe Article do
  describe "associations" do 
    it { should have_many :comments }
  end

  describe "validations" do
    it { should validate_presence_of :title} 
    it { should validate_presence_of :text}
  end

  describe "#subject" do
    it "returns the article title" do
      # Cоздаем объект article хитрым способом
      article = create(:article, title: 'Lorem Ipsum')
    
      #axpect, проверка
      expect(article.subject).to eq 'Lorem Ipsum'
    end
  end

  describe "#last_comment" do
    it "returns the last comment" do
      # Создаем статью, но в этот раз с комментариямя
      article = create(:article_with_comments)

      # Проверка
      expect(article.last_comment.body).to eq "comment body 3"
    end
  end

end
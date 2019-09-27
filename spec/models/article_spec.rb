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
end
class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end


  def new
  end

  def create
    @articles = Article.all
    @article = Article.new(articles_params)
      if @article.valid?
        @article.save
        redirect_to @article
      else
        render action: 'new'
    end  
  end

  private

  def articles_params
    params.require(:article).permit(:title, :text)
  end
end

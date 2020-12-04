class ArticlesController < ApplicationController
  def show
    @article = Article.find(params[:id])
  end

  def new
  end

  def create
    @article = Article.new(article_params)

    if @article.save
      redirect_to @article
    else
      render action 'new'
    end

  end

    private

    def article_params
      params.require(:article).permit(:title, :text, :author)
    end

end

module ArticlesHelper
  def article_params
      params.require(:article).permit(:title, :body)
      @article = Article.new(article_params)
  end
  def update
    @article = Article.find(params[:id])
    @article.update(article_params)

    flash.notice = "Article '#{@article.title}' Updated!"

    redirect_to article_path(@article)
  end


end

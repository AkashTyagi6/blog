class ArticlesController < ApplicationController
  include ArticlesHelper
    def create
      @article = Article.new(
        title: params[:article][:title],
        body: params[:article][:body])
      @article.save
      redirect_to article_path(@article)
    end

    def index
      @articles = Article.all
    end

    def show
      @article = Article.find(params[:id])
    end

    def new
      @article = Article.new
      @comment = Comment.new
      @comment.article_id = @article.id

    end


    def edit
      @article = Article.find(params[:id])
    end
end

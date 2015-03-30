class ArticlesController < ApplicationController
  before_action :set_article, only: [:destroy]

def index
  @articles = Article.all
end

def new
  @article = Article.new
end

def create
  @article = Article.create!(blog_master_params)
  flash[:notice] = "New article created."
  redirect_to root_path
end

def destroy
  @article.destroy
  flash[:notice] = @article.title + " was deleted."
  redirect_to root_path
end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_article
      @article = Article.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def blog_master_params
      params.require(:article).permit(:title, :content)
    end
end

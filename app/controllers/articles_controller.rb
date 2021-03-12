class ArticlesController < ApplicationController
  include Crawler
  before_action :authenticate_user!

  def index
    if params[:search_query]
      @content = Crawler.get(params[:search_query])
    else
      @content = Crawler.get
    end
    respond_to do |format|
      format.js
      format.html
    end
  end

  def get_save
    @articles = current_user.save_articles
  end

  def do_save
    save_article = SaveArticle.new
    save_article.url = params[:url]
    save_article.title = params[:title]
    save_article.user = current_user

    if save_article.save
      flash[:notice] = "Save success."
      redirect_to action: "get_save"
    else
      flash[:alert] = "Save Failed"
      redirect_to root_path
    end
  end
end

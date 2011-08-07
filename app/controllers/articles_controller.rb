class ArticlesController < InheritedResources::Base
  load_and_authorize_resource
  
  def index
    @articles = Article.all
  end
  def new
    @article = Article.new
  end
end

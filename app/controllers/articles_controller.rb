class ArticlesController < ApplicationController
  skip_before_action :authorized, only: %i[ show index create update destroy ]

  # GET /articles or /articles.json
  def index
    @articles = Article.all
    render :json @articles, status: :ok
  end

  # GET /articles/1 or /articles/1.json
  def show
    @article = set_article
    render json: @article, status: :ok
  end

  # POST /articles or /articles.json
  def create
    @article = Article.create!(create_article_params)
    render json: @article, status: :created
  end

  # PATCH/PUT /articles/1 or /articles/1.json
  def update
    @article = set_article 
    @article.update!(update_article_params)
    render json: @article
  end

  # DELETE /articles/1 or /articles/1.json
  def destroy
    @article = set_article
    @article.destroy
    head :no_content
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_article
      @article = Article.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def create_article_params
      params.require(:article).permit(:physical_therapist_id, :title, :author, :article_body, :category, :published, :photo)
    end

    def update_article_params
      params.require(:article).permit(:title, :author, :article_body, :category, :published, :photo)
    end
end

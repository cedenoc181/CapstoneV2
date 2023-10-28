class ArticlesController < ApplicationController
  # skip before action :authorized allows me to index and show articles without a user logged in 
  skip_before_action :authorized, only: %i[show index]
  # before action runs set_article before having access to show update destroy
  before_action :set_article, only: %i[show, update, destroy]

  # GET /articles or /articles.json
  def index
    @articles = Article.all
    render json: @articles, status: :ok
  end

  # GET /articles/1 or /articles/1.json
  def show
    render json: @article, status: :ok
  end

  # POST /articles or /articles.json
  def create
    @article = Article.create!(article_params)
    render json: @article, status: :created
  end

  # PATCH/PUT /articles/1 or /articles/1.json
  def update
      @article.update!(article_params)
      render json: @article
  end

  # DELETE /articles/1 or /articles/1.json
  def destroy
      @article.destroy
      head :no_content
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_article
      @article = Article.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def article_params
      params.require(:article).permit(:physical_therapist_id, :title, :author, :article_body, :category, :published, :photo)
    end

end

class ArticlesController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :render_record_not_found
  # skip before action :authorized allows me to index and show articles without a user logged in 
  skip_before_action :authorized, only: %i[show index]
  # before action sets the private method set_article for the 3 listed methods so no need to add it in the method code
  before_action :set_article, only: %i[show, update, destroy]

  # GET /articles or /articles.json
  def index
    @articles = Article.all
    render json: @articles, status: :ok
  end

  # GET /articles/1 or /articles/1.json
  def show
    unless @article
      render json: { error: "Article not found" }, status: :not_found
      return
    end
    
    render json: @article, status: :ok
  end

  # POST /articles or /articles.json
  def create
    @article = Article.new(create_article_params)
    
    if @article.save
      render json: @article, status: :created
    else
      render json: { errors: @article.errors.full_messages }, status: :unprocessable_entity
    end
  end

  # unless looks for a false value in order to execute the code that follows 
  # PATCH/PUT /articles/1 or /articles/1.json
  def update
    unless @article
      render json: { error: "Article not found" }, status: :not_found
      return
    end
    
    if @article.update(update_article_params)
      render json: @article
    else
      render json: { errors: @article.errors.full_messages }, status: :unprocessable_entity
    end
  end

  # DELETE /articles/1 or /articles/1.json
  def destroy
    unless @article
      render json: { error: "Article not found" }, status: :not_found
      return
    end
    
    if @article.destroy
      head :no_content
    else
      render json: { errors: ["Failed to delete the article."] }, status: :unprocessable_entity
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_article
      @article = Article.find_by(id: params[:id])
    end

    # Only allow a list of trusted parameters through.
    def create_article_params
      params.require(:article).permit(:physical_therapist_id, :title, :author, :article_body, :category, :published, :photo)
    end

    def update_article_params
      params.require(:article).permit(:title, :author, :article_body, :category, :published, :photo)
    end
end

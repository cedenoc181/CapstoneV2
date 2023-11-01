# done
class ExpressionsController < ApplicationController
  before_action :set_expression, only: [ :show, :update, :destroy ]
  skip_before_action :authorized, only: [:index, :show]

  # GET /expressions or /expressions.json
  def index
    @expressions = Expression.all
    render json: @expression, status: :ok
  end

  # GET /expressions/1 or /expressions/1.json
  def show
    render json: @expression, status: :ok
  end


  # POST /expressions or /expressions.json
  def create
    @expression = Expression.create!(expression_params)
    render json: @expression, status: :create
  end

  # PATCH/PUT /expressions/1 or /expressions/1.json
  def update
  @expression = Expression.update!(expression_params)
  render json: @expression, status: :ok
  end

  # DELETE /expressions/1 or /expressions/1.json
  def destroy
    @expression.destroy
    head :no_content 
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_expression
      @expression = Expression.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def expression_params
      params.require(:expression).permit(:user_id, :article_id, :likes, :comments)
    end
end

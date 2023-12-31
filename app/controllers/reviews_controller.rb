class ReviewsController < ApplicationController
    before_action :set_review, only: [:show, :update, :destroy]
      
        # GET /reviews
        def index
          reviews = Review.all
          render json: reviews
        end
      
        # GET /reviews/1
        def show
          render json: @review
        end
      
        # POST /reviews
        def create
            review = @current_user.reviews.create!(review_params)
            render json: recipe, status: :created
        end
      
        # PATCH/PUT /reviews/1
        def update
          if @review.update(review_params)
            render json: @review
          else
            render json: @review.errors, status: :unprocessable_entity
          end
        end
      
        # DELETE /reviews/1
        def destroy
          @review.destroy
        end
      
        private
      
        def set_review
          @review = Review.find(params[:id])
        end
      
        def review_params
          params.require(:review).permit(:title, :user_id, :rating, :anatomy_module_id, :review)
        end
    
end

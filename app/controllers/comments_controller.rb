class CommentsController < ApplicationController
	# include ApplicationHelper
	def index
	  @commentable = find_commentable
	  @comments = @commentable.comments
	end

	def create
	  @commentable = find_commentable
	  @comment = @commentable.comments.build(params[:comment])
	  if @comment.save
	    flash[:notice] = "Successfully created comment."
	    redirect_to @commentable
	  else
	    render :action => 'new'
	  end
	end

	private

  def user_params
    params.require(:user).permit(:first_name,
    	:last_name,
    	:email,
    	:password,
    	:phone_number)
  end

	def find_commentable
	  params.each do |name, value|
	    if name =~ /(.+)_id$/
	      return $1.classify.constantize.find(value)
	    end
	  end
	  nil
	end
end
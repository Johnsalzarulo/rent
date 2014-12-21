class IssuesController < ApplicationController
	before_action :set_issue, only: [:show, :edit, :update, :destroy]
	before_filter :authorize

	def index
		    @new = current_landlord.issues.new_task
    		@in_progress = current_landlord.issues.in_progress 
    		@complete = current_landlord.issues.complete 
    		@archive = current_landlord.issues.archive 
    		@not_complete = current_landlord.issues.not_complete 

    		@issue = current_landlord.issues.new
	end

	def show
	end

	def new
    	@issue = current_landlord.issues.new
  	end

	def edit
	end

	def create
	  @issue = current_landlord.issues.new(issue_params)

	    if @issue.save
	      redirect_to issues_path, notice: 'Issue was successfully created.'
	    else
	      render :new
	    end
	end


	def update

	    if @issue.update(issue_params)
	      redirect_to issues_path
	    else
	      render :edit
	    end
	end

	def destroy
	  @issue.destroy
	    redirect_to issues_url, notice: 'Issue was successfully destroyed.'
	end

private
    def set_issue
      @issue = Issue.find(params[:id])
    end

    def issue_params
      params.require(:issue).permit(:note, :property_id, :status)
    end

end
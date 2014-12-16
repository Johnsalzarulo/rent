class IssuesController < ApplicationController
	before_action :set_issue, only: [:show, :edit, :update, :destroy]
	before_filter :authorize

	def index
		@issues = current_landlord.issues

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
	      redirect_to @issue, notice: 'Issue was successfully created.'
	    else
	      render :new
	    end
	end


	def update

	    if @issue.update(issue_params)
	      redirect_to @issue, notice: 'Issue was successfully updated.'
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
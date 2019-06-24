class ProjectsController < ApplicationController
	def index
		@projects = Project.all
	end

	def show
		set_project
	end


	def new
	end

	def create
		@project = Project.create(project_params)
		redirect_to project_path(@project)
	end

	def edit
		set_project
	end

	def update
		set_project
		@project.update(project_params)
		redirect_to project_path(@project)
	end

	def destroy
		set_project
		@project.delete
		redirect_to projects_path
	end

	def set_project
		@project = Project.find(params[:id])
	end

	def project_params
		params.require(:project).permit(:title, :desc)
	end
end
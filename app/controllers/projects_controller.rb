class ProjectsController < ApplicationController
  before_action :set_project, only: [:show, :edit, :update, :destroy]

  # GET /projects
  # GET /projects.json
  def index
    if (params[:category_id])
      @projects = Project.where(category_id: params[:category_id], published: true).order(date: :desc)
    else
      @projects = Project.where(published: true).order(date: :desc)
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project
      @project = Project.friendly.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def project_params
      params.require(:project).permit(:name, :date, :technology, :role, :description, :category_id, :link)
    end
end
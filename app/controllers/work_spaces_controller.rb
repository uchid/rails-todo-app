class WorkSpacesController < ApplicationController
  def show
    @projects = Project.all
  end
end

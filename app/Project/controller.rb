require 'rho/rhocontroller'

class ProjectController < Rho::RhoController

  #GET /Project
  def index
    @projects = Project.find(:all)
    render
  end

  # GET /Project/{1}
  def show
    @project = Project.find(@params['id'])
    render :action => :show
  end

  # GET /Project/new
  def new
    @project = Project.new
    render :action => :new
  end

  # GET /Project/{1}/edit
  def edit
    @project = Project.find(@params['id'])
    render :action => :edit
  end

  # POST /Project/create
  def create
    @project = Project.new(@params['project'])
    @project.save
    redirect :action => :index
  end

  # POST /Project/{1}/update
  def update
    @project = Project.find(@params['id'])
    @project.update_attributes(@params['project'])
    redirect :action => :index
  end

  # POST /Project/{1}/delete
  def delete
    @project = Project.find(@params['id'])
    @project.destroy
    redirect :action => :index
  end
end

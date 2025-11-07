class ChildrenController < ApplicationController
  before_action :set_child, only: %i[ show edit update destroy ]

  def index
    @children = Child.all
  end

  def show
  end

  def new
    @child = Child.new
  end

  def create
    @child = Child.new(child_params)
    if @child.save
      redirect_to @child
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @child.update(child_params)
      redirect_to @child
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @child.destroy
    redirect_to children_path
  end

  private
    def set_child
      @child = Child.find(params[:id])
    end

    def child_params
      params.expect(child: [ :first_name, :last_name, :date_of_birth, :town ])
    end
end

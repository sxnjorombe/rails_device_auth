class SysAdmin::RolesController < ApplicationController
  before_action :set_role, only: [:show, :update, :destroy]

  # GET /dev/roles
  def index
    @roles = Role.all

    render json: @roles
  end

  # GET /dev/roles/1
  def show
    render json: @role
  end

  # POST /dev/roles
  def create
    @role = Role.new(role_params)

    if @role.save
      render json: @role, status: :created, location: @role
    else
      render json: @role.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /dev/roles/1
  def update
    if @role.update(role_params)
      render json: @role
    else
      render json: @role.errors, status: :unprocessable_entity
    end
  end

  # DELETE /dev/roles/1
  def destroy
    @role.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_role
      @role = Role.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def role_params
      params.require(:role).permit(:name, :desc, :icon, :mac)
    end
end

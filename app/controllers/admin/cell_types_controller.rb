class Admin::CellTypesController < AdminController
  before_action :set_cell_type, only: %i[ show edit update destroy ]

  # GET /admin/cell_types or /admin/cell_types.json
  def index
    @cell_types = CellType.all
  end

  # GET /admin/cell_types/1 or /admin/cell_types/1.json
  def show
  end

  # GET /admin/cell_types/new
  def new
    @cell_type = CellType.new
  end

  # GET /admin/cell_types/1/edit
  def edit
  end

  # POST /admin/cell_types or /admin/cell_types.json
  def create
    @cell_type = CellType.new(cell_type_params)

    respond_to do |format|
      if @cell_type.save
        format.html { redirect_to admin_cell_type_url(@cell_type), notice: "Cell type was successfully created." }
        format.json { render :show, status: :created, location: @cell_type }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @cell_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/cell_types/1 or /admin/cell_types/1.json
  def update
    respond_to do |format|
      if @cell_type.update(cell_type_params)
        format.html { redirect_to admin_cell_type_url(@cell_type), notice: "Cell type was successfully updated." }
        format.json { render :show, status: :ok, location: @cell_type }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @cell_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/cell_types/1 or /admin/cell_types/1.json
  def destroy
    @cell_type.destroy

    respond_to do |format|
      format.html { redirect_to admin_cell_types_url, notice: "Cell type was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cell_type
      @cell_type = CellType.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cell_type_params
      params.fetch(:cell_type, {}).permit(:name, :description, :machine_name, :type_model, :public,
                                          :active, :sortable, :removable, :commentable)
    end
end

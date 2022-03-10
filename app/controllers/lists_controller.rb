class ListsController < ApplicationController
  before_action :set_list, only: %i[ show edit update destroy ]
  # before_action :autenticate_user!, except: [:index]

  # GET /lists or /lists.json
  def index
    @lists = List.all.where(user_id: current_user.id)
    # @lists = List.where(user_id: current_user.id).take
  end

  # GET /lists/1 or /lists/1.json
  def show
    @id_lista = params[:id]
    @items = Item.all.where(list_id: @id_lista)
    @item = Item.new
    if @list.user_id != current_user.id
      redirect_to root_path , notice: "This list does not belong to you!"
    end
  end

  # GET /lists/new
  def new
    @list = List.new
  end

  # GET /lists/1/edit
  def edit
  end

  # POST /lists or /lists.json
  def create
    @list = List.new(list_params)

    respond_to do |format|
      if @list.save
        format.html { redirect_to list_url(@list), notice: "List was successfully created." }
        format.json { render :show, status: :created, location: @list }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lists/1 or /lists/1.json
  def update
    respond_to do |format|
      if @list.update(list_params)
        format.html { redirect_to list_url(@list), notice: "List was successfully updated." }
        format.json { render :show, status: :ok, location: @list }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lists/1 or /lists/1.json
  def destroy
    @list.destroy

    respond_to do |format|
      format.html { redirect_to lists_url, notice: "List was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_list
      @list = List.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def list_params
      params.require(:list).permit(:title, :description, :position, :user_id)
    end
end

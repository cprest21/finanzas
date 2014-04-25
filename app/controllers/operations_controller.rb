class OperationsController < ApplicationController
  before_action :set_operation, only: [:show, :edit, :update, :destroy]

  # GET /operations
  # GET /operations.json
  def index
    @operations = Operation.all.limit(3).offset(params[:offset])
    @next_offset = params[:offset].to_i + 3
    @prev_offset = params[:offset].to_i - 3
    
    @count = Operation.all.count
  end

  # GET /operations/1
  # GET /operations/1.json
  def show
  end

  # GET /operations/new
  def new
    @operation = Operation.new

    @operation.operation_items.build

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @operation }
    end
  end

  # GET /operations/1/edit
  def edit
  end

  # POST /operations
  # POST /operations.json
  def create
    @operation = Operation.new(operation_params)
    #@operation = Operation.new(params[:operation])
    #@operation_item = Operation_Item.new

    if params[:add_item]=="Add operation item"
      @operation.operation_items.build
      render :action => 'edit'
    else
      respond_to do |format|
        #if @purchase.update_attributes(params[:operation])
        if @operation.save
          format.html { redirect_to new_operation_item_url(:operation_id => @operation.id)}
            #@operation, notice: 'Operation was successfully created.' }
          format.json { render action: 'show', status: :created, location: @operation }
        else
          format.html { render action: 'new' }
          format.json { render json: @operation.errors, status: :unprocessable_entity }
        end
      end
    end
  end

  # PATCH/PUT /operations/1
  # PATCH/PUT /operations/1.json
  def update
    @operation = Operation.find(params[:id])
    if params[:add_item]=="Add operation item"
      @operation.operation_items.build
      render :action => 'edit'
    else
      respond_to do |format|
        if @operation.update(operation_params)
          format.html { redirect_to @operation, notice: 'Operation was successfully updated.' }
          format.json { head :no_content }
        else
          format.html { render action: 'edit' }
          format.json { render json: @operation.errors, status: :unprocessable_entity }
        end
      end
    end
  end

  # DELETE /operations/1
  # DELETE /operations/1.json
  def destroy
    @operation.destroy
    respond_to do |format|
      format.html { redirect_to operations_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_operation
      @operation = Operation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def operation_params
      params.require(:operation).permit(:operation_type_id, :store_id, :title, :account_id, :amount)
    end
end

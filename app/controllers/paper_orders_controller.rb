class PaperOrdersController < ApplicationController
  # GET /paper_orders
  # GET /paper_orders.json
  def index
    @paper_orders = PaperOrder.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @paper_orders }
    end
  end

  # GET /paper_orders/1
  # GET /paper_orders/1.json
  def show
    @paper_order = PaperOrder.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @paper_order }
    end
  end

  # GET /paper_orders/new
  # GET /paper_orders/new.json
  def new
    @paper_order = PaperOrder.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @paper_order }
    end
  end

  # GET /paper_orders/1/edit
  def edit
    @paper_order = PaperOrder.find(params[:id])
  end

  # POST /paper_orders
  # POST /paper_orders.json
  def create
    @paper_order = PaperOrder.new(params[:paper_order])

    respond_to do |format|
      if @paper_order.save
        format.html { redirect_to @paper_order, notice: 'Paper order was successfully created.' }
        format.json { render json: @paper_order, status: :created, location: @paper_order }
      else
        format.html { render action: "new" }
        format.json { render json: @paper_order.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /paper_orders/1
  # PUT /paper_orders/1.json
  def update
    @paper_order = PaperOrder.find(params[:id])

    respond_to do |format|
      if @paper_order.update_attributes(params[:paper_order])
        format.html { redirect_to @paper_order, notice: 'Paper order was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @paper_order.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /paper_orders/1
  # DELETE /paper_orders/1.json
  def destroy
    @paper_order = PaperOrder.find(params[:id])
    @paper_order.destroy

    respond_to do |format|
      format.html { redirect_to paper_orders_url }
      format.json { head :no_content }
    end
  end
end

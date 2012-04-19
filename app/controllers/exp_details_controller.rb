class ExpDetailsController < ApplicationController
  # GET /exp_details
  # GET /exp_details.json
  def index
    @exp_details = ExpDetail.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @exp_details }
    end
  end

  # GET /exp_details/1
  # GET /exp_details/1.json
  def show
    @exp_detail = ExpDetail.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @exp_detail }
    end
  end

  # GET /exp_details/new
  # GET /exp_details/new.json
  def new
    @exp_detail = ExpDetail.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @exp_detail }
    end
  end

  # GET /exp_details/1/edit
  def edit
    @exp_detail = ExpDetail.find(params[:id])
  end

  # POST /exp_details
  # POST /exp_details.json
  def create
    @exp_detail = ExpDetail.new(params[:exp_detail])

    respond_to do |format|
      if @exp_detail.save
        format.html { redirect_to @exp_detail, notice: 'Exp detail was successfully created.' }
        format.json { render json: @exp_detail, status: :created, location: @exp_detail }
      else
        format.html { render action: "new" }
        format.json { render json: @exp_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /exp_details/1
  # PUT /exp_details/1.json
  def update
    @exp_detail = ExpDetail.find(params[:id])

    respond_to do |format|
      if @exp_detail.update_attributes(params[:exp_detail])
        format.html { redirect_to @exp_detail, notice: 'Exp detail was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @exp_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /exp_details/1
  # DELETE /exp_details/1.json
  def destroy
    @exp_detail = ExpDetail.find(params[:id])
    @exp_detail.destroy

    respond_to do |format|
      format.html { redirect_to exp_details_url }
      format.json { head :no_content }
    end
  end
end

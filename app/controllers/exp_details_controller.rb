class ExpDetailsController < ApplicationController

  def index
    @exp_details = ExpDetail.all

  end

  def show
    @exp_detail = ExpDetail.find(params[:id])

  end

  def new
    @exp_detail = ExpDetail.new

  end

  def edit
    @exp_detail = ExpDetail.find(params[:id])

  end

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

  def destroy
    @exp_detail = ExpDetail.find(params[:id])
    @exp_detail.destroy

  end
end

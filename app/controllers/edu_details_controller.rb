class EduDetailsController < ApplicationController

  def index
    @edu_details = EduDetail.all

  end

  def show
    @edu_detail = EduDetail.find(params[:id])

  end

  def new
    @edu_detail = EduDetail.new

  end

  def edit
    @edu_detail = EduDetail.find(params[:id])

  end

  def create
    @edu_detail = EduDetail.new(params[:edu_detail])

    respond_to do |format|
      if @edu_detail.save
        format.html { redirect_to @edu_detail, notice: 'Edu detail was successfully created.' }
        format.json { render json: @edu_detail, status: :created, location: @edu_detail }
      else
        format.html { render action: "new" }
        format.json { render json: @edu_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @edu_detail = EduDetail.find(params[:id])

    respond_to do |format|
      if @edu_detail.update_attributes(params[:edu_detail])
        format.html { redirect_to @edu_detail, notice: 'Edu detail was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @edu_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @edu_detail = EduDetail.find(params[:id])
    @edu_detail.destroy
  end
end

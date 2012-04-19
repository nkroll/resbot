class EducationsController < ApplicationController

  def index
    @educations = Education.all

  end

  def show
    @education = Education.find(params[:id])

  end

  def new
    @education = Education.new

  end

  def edit
    @education = Education.find(params[:id])
  
  end

  def create
    @education = Education.new(params[:education])

    respond_to do |format|
      if @education.save
        format.html { redirect_to @education, notice: 'Education was successfully created.' }
        format.json { render json: @education, status: :created, location: @education }
      else
        format.html { render action: "new" }
        format.json { render json: @education.errors, status: :unprocessable_entity }
      end
    end
  
  end

  def update
    @education = Education.find(params[:id])

    respond_to do |format|
      if @education.update_attributes(params[:education])
        format.html { redirect_to @education, notice: 'Education was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @education.errors, status: :unprocessable_entity }
      end
    end
  
  end

  def destroy
    @education = Education.find(params[:id])
    @education.destroy

  end
end

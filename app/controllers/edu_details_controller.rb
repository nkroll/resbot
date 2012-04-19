class EduDetailsController < ApplicationController
  # GET /edu_details
  # GET /edu_details.json
  def index
    @edu_details = EduDetail.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @edu_details }
    end
  end

  # GET /edu_details/1
  # GET /edu_details/1.json
  def show
    @edu_detail = EduDetail.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @edu_detail }
    end
  end

  # GET /edu_details/new
  # GET /edu_details/new.json
  def new
    @edu_detail = EduDetail.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @edu_detail }
    end
  end

  # GET /edu_details/1/edit
  def edit
    @edu_detail = EduDetail.find(params[:id])
  end

  # POST /edu_details
  # POST /edu_details.json
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

  # PUT /edu_details/1
  # PUT /edu_details/1.json
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

  # DELETE /edu_details/1
  # DELETE /edu_details/1.json
  def destroy
    @edu_detail = EduDetail.find(params[:id])
    @edu_detail.destroy

    respond_to do |format|
      format.html { redirect_to edu_details_url }
      format.json { head :no_content }
    end
  end
end

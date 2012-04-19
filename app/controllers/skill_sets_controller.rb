class SkillSetsController < ApplicationController

  def index
    @skill_sets = SkillSet.all

  end


  def show
    @skill_set = SkillSet.find(params[:id])

  end


  def new
    @skill_set = SkillSet.new


  end


  def edit
    @skill_set = SkillSet.find(params[:id])
  end


  def create
    @skill_set = SkillSet.new(params[:skill_set])

    respond_to do |format|
      if @skill_set.save
        format.html { redirect_to @skill_set, notice: 'Skill set was successfully created.' }
        format.json { render json: @skill_set, status: :created, location: @skill_set }
      else
        format.html { render action: "new" }
        format.json { render json: @skill_set.errors, status: :unprocessable_entity }
      end
    end
  end


  def update
    @skill_set = SkillSet.find(params[:id])

    respond_to do |format|
      if @skill_set.update_attributes(params[:skill_set])
        format.html { redirect_to @skill_set, notice: 'Skill set was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @skill_set.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @skill_set = SkillSet.find(params[:id])
    @skill_set.destroy

  end
end

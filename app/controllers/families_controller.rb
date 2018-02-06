class FamiliesController < ApplicationController

  def new
    @family = Family.new
  end

  def create
    @family = Family.new(family_params)
    @family.save
  end

  private

  def family_params
    params.require(:family).permit(:name)
  end

end

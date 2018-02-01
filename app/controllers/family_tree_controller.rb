class FamilyTreeController < ApplicationController
  def new
    @family_tree = FamilyTree.create(params[:family_tree])
  end

  # def show
  #   @family_tree = FamilyTree.find(params[:id])
  # end

end

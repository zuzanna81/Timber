class FamilyTreeController < ApplicationController
  def new
    @family_tree = FamilyTree.create(params[:family_tree])
  end
end

class RelationshipsController < ApplicationController
  @member = Member.find(params[:id])

  def add_relationship
    @member = Member.new
  end
end

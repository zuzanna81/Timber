class MembersController < ApplicationController

  def create
    @member = Member.create
  end
end

class FamiliesController < ApplicationController
  def index
    @family = current_user.family
  end
end
class PagesController < ApplicationController
  def home
    @message= "tu sme doma"
  end

  def contact
    @message= "nepíš nam"
  end
end

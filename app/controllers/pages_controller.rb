class PagesController < ApplicationController
  def home
    @jungles = Jungle.order(created_at: :desc)
  end
end

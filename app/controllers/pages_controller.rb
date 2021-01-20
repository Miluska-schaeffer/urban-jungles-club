class PagesController < ApplicationController
  def home
    @jungles = Jungle.order(created_at: :desc).limit(7)
  end
end

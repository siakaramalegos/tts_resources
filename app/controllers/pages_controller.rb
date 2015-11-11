class PagesController < ApplicationController
  def home
    @newest_resources = Resource.recently_created
    @hot_resources = Resource.all.sort_by(&:netvotes).reverse.first(5)
  end

  def about
  end
end

class StaticPagesController < ApplicationController
  def home
  end

  def map
  end

  def help
  end

  def africa
  end

  def asia
  end

  def europe
  end

  def australia
  end

  def contact
  end

  def northAmerica
  end

  def southAmerica
  end

  def about
  end

  def uav
  end

  def ugv
  end

  def uuv
  end

   def index
    @indexed_pages = Page.count
  end

  def search
    digger = Digger.new
    t0 = Time.now
    @results = digger.search(params[:q])
    t1 = Time.now
    @time_taken = "#{"%6.2f" % (t1 - t0)} secs"
  end

  def news
    @feed_entries = FeedEntry.search(params[:search], params[:page])
  end
end

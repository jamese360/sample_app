FRESHNESS_POLICY = 60 * 60 * 24 * 7 # 7 days

class Page < ActiveRecord::Base
  has_many :locations
  has_many :words, :through => :locations

  # find_or_initialize_by_url
  #def self.find(url)
  #  page = first(:url => url)
  #  page = new(:url => url) if page.nil?
  #  return page
  #end

  # touch
  def refresh
    update_attributes({:updated_at => DateTime.parse(Time.now.to_s)})
  end
  
  def age
    (Time.now - updated_at.to_time)/60
  end

  def fresh?
    age > FRESHNESS_POLICY ? false : true 
  end

end

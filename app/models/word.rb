class Word < ActiveRecord::Base
  has_many :locations
  has_many :pages, :through => :locations

  # find_or_initialize_by_stem
  #def self.find(word)
  #  wrd = first(:stem => word)
  #  wrd = new(:stem => word) if wrd.nil?
  #  return wrd
  #end
end

class Movie < ActiveRecord::Base
  attr_accessible :title, :rating, :description, :release_date

  def self.get_ratings
  	select(:rating).map(&:rating).uniq
  end
  	
end

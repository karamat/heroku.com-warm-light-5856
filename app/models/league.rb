class League < ActiveRecord::Base
  attr_accessible :name
  belongs_to :country
end

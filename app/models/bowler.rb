class Bowler < ActiveRecord::Base
  attr_accessible :fourhaul, :fivehaul, :BBI, :ave, :econ, :innings, :madian, :overs, :player_id, :runs, :sr
end

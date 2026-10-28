class Metchallenge < ApplicationRecord
  belongs_to :challenge
  attr_accessor :met
  before_create do
    self.started_at = Time.now
  end
  before_validation do
    if met == "started"
      p "awesome"
    elsif met == "met"
      self.met_at = Time.now
    end
  end
end

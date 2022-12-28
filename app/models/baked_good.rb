class BakedGood < ActiveRecord::Base
  belongs_to :bakery

  def self.most_expensive
    self.all.order(picre: :desc).first
  end
end

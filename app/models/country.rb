class Country < ActiveRecord::Base
  has_many :places, :dependent => :destroy

  validates :name, :presence => true,
                   :length => { :maximum => 30 }
end

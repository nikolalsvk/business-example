class Place < ActiveRecord::Base
  belongs_to :country

  validates :postal_code, :presence => true,
                          :length => { :maximum => 5 }
  validates :name, :presence => true,
                   :length => { :maximum => 50 }
end

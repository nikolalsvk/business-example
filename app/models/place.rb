class Place < ActiveRecord::Base
  belongs_to :country

  validates :postal_code, :presence => true,
                          :length => { :maximum => 5 }
  validates :name, :presence => true,
                   :length => { :maximum => 50 }

  def self.search(search_params)
    where("name ILIKE ?", "%#{search_params}%") ||
    where("postal_code ILIKE ?", "%#{search_params}%")
  end

end

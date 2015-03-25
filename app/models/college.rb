class College < ActiveRecord::Base

  has_many :participants, dependent: :destroy
  accepts_nested_attributes_for :participants
  
  validates :name,        presence: true

  validates :group_name,  presence: true,
                          uniqueness: { case_sensitive: false }

  validates :contact_no,  presence: true,
                          numericality: true,
                          length: { is: 10 },
                          uniqueness: true
end

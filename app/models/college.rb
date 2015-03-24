class College < ActiveRecord::Base

  validates :name,        presence: true

  validates :group_name,  presence: true,
                          uniqueness: { case_sensitive: false }

  validates :contact_no,  presence: true,
                          numericality: true,
                          length: { is: 10 },
                          uniqueness: true
end

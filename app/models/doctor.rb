class Doctor < ApplicationRecord
    has_many :appointements
    belongs_to :city
    has_many :patients, through: :appointments
end

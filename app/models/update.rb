class Update < ActiveRecord::Base
  belongs_to :expedient
  validates_presence_of :expedient_id
  validates_presence_of :novedad
end

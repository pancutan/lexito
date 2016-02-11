# == Schema Information
#
# Table name: updates
#
#  id           :integer          not null, primary key
#  expedient_id :integer
#  novedad      :text
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Update < ActiveRecord::Base
  belongs_to :expedient
  validates_presence_of :expedient_id
  validates_presence_of :novedad
end

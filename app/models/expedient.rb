class Expedient < ActiveRecord::Base
  validates_presence_of :numero
  validates_presence_of :caratula
  validates_uniqueness_of :numero
  validates_uniqueness_of :caratula
end

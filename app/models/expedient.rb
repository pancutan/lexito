class Expedient < ActiveRecord::Base
  validates_numericality_of :numero
  validates_presence_of :numero, :caratula, :actor, :demandado
  has_many :updates, :dependent => :destroy, :validate => :false
end

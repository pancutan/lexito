# == Schema Information
#
# Table name: expedients
#
#  id                             :integer          not null, primary key
#  numero                         :integer
#  caratula                       :string
#  actor                          :string
#  demandado                      :string
#  abogado                        :string
#  telefono_abogado               :string
#  email_abogado                  :string
#  perito_medico                  :string
#  perito_medico_email            :string
#  perito_medico_telefono         :string
#  perito_medico_incapacidad      :integer
#  perito_psicologico             :string
#  perito_psicologico_email       :string
#  perito_psicologico_telefono    :string
#  perito_psicologico_incapacidad :integer
#  perito_contable                :string
#  perito_contable_email          :string
#  perito_contable_telefono       :string
#  ibm                            :integer
#  indenmizacion                  :integer
#  created_at                     :datetime         not null
#  updated_at                     :datetime         not null
#  dni                            :string
#  camara                         :integer
#  fecnac                         :date
#  gestor                         :string
#  responsable                    :string
#

class Expedient < ActiveRecord::Base  

  validates_presence_of :caratula, :actor, :demandado
  
  has_many :updates, :dependent => :destroy, :validate => :false
end

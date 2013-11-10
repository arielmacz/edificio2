class Servicio < ActiveRecord::Base
	belongs_to :apartamento
	attr_accessible :agua, :apartamento_numero, :luz, :telefono, :total
	validates :agua, :apartamento_numero, :luz, :telefono, :total, :presence => true
	validates :agua, :luz, :telefono, :total, :numericality => {:greater_than_or_equal_to => 0.01}
	validates :apartamento_numero, :uniqueness => true
end
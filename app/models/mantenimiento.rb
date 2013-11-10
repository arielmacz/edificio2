class Mantenimiento < ActiveRecord::Base
	belongs_to :apartamento
	attr_accessible :apartamento_numero, :fumigacion, :pintura, :total, :plomeria
	validates :apartamento_numero, :fumigacion, :pintura, :total, :plomeria, :presence => true
	validates :fumigacion, :pintura, :total, :plomeria, :numericality => {:greater_than_or_equal_to => 0.01}
	validates :apartamento_numero, :uniqueness => true
end
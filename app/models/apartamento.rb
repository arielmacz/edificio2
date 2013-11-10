class Apartamento < ActiveRecord::Base
	has_many :mantenimiento
	has_many :servicio
	attr_accessible :estado, :mensualidad, :mes, :meses, :numero, :inquilino
	validates :estado, :mensualidad, :mes, :meses, :numero, :inquilino, :presence => true
	validates :mensualidad, :mes, :meses, :numericality => {:greater_than_or_equal_to => 0.01}
	validates :numero, :uniqueness => true
end
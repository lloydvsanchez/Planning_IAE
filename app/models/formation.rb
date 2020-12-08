class Formation < ApplicationRecord
	
	audited
	
	has_many :users
	has_many :cours, dependent: :destroy
	has_many :intervenants, through: :cours
	has_many :documents, dependent: :destroy
	
	has_many :unites
	accepts_nested_attributes_for :unites, allow_destroy:true, 
									reject_if: lambda {|attributes| attributes['num'].blank?}

	has_many :etudiants
	accepts_nested_attributes_for :etudiants, allow_destroy:true, 
									reject_if: lambda {|attributes| attributes['nom'].blank?}

	has_many :vacations
	accepts_nested_attributes_for :vacations, allow_destroy:true, 
									reject_if: lambda {|attributes| attributes['intervenant_id'].blank? || 
																	attributes['titre'].blank? ||
																	attributes['date'].blank? ||
																	attributes['qte'].blank? ||
																	attributes['forfaithtd'].blank?	}
	belongs_to :user

	validates :nom, :nbr_etudiants, :nbr_heures, :abrg, presence: true
	validates :nom, uniqueness: {scope: :promo}
	
	default_scope { where("archive is null OR archive is false") }
	default_scope { order(:nom, :promo) } 
	
	def nom_promo
		self.promo.blank? ? self.nom : "#{self.nom} - #{self.promo}" 
	end

	def nom_promo_full
		self.promo.blank? ? self.nom : "#{self.nom} | Promo: #{self.promo}" 
	end

	def nom_promo_etudiants
		self.promo.blank? ? "#{self.nom} (#{self.nbr_etudiants}E)"  : "#{self.nom} - #{self.promo} (#{self.nbr_etudiants}E)" 
	end

	def nom_eotp
		self.code_analytique.blank? ? self.nom : "#{self.nom} -> #{self.code_analytique}"
	end

	def code_analytique_avec_indice(cours)
		code = self.code_analytique || ''
		if code.last == '?'
			indice = ((cours.debut.year - self.cours.first.debut.year) + 1).to_s
			return code.gsub('?', indice)
		else
			return code
		end	
	end

	def self.for_select
		{
		  'Formations catalogue' => where(hors_catalogue:false).map { |i| i.nom },
		  'Formations hors catalogue' => where(hors_catalogue:true).map { |i| i.nom }
		}
	end

end


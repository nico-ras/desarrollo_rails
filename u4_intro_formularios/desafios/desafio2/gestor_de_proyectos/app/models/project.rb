class Project < ApplicationRecord

    validates :name, presence: true
    validates :descript, presence: true 
    validates :state, presence: true  

    enum state: [:proposal, :in_progress, :finished]
    # scope :search_proposal, -> {where(state: 'proposal')}
    # scope :search_in_progress, -> {where(state: 'in_progress')}
    # scope :search_finished, -> {where(state: 'finished')}
    scope :search, ->(param){where(state: param)}
end

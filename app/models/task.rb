class Task < ApplicationRecord
    has_many :chores
    has_many :children, through: :chores

    validates_presence_of :name
    validates :points, numericality: { only_integer: true, greater_than: 0 }

    scope :alphabetical, -> {order(:name)}
    scope :active, -> {where(active: true)}
    


end

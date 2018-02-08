class Project < ApplicationRecord
  has_many :tasks, inverse_of: :project
  accepts_nested_attributes_for :tasks,
                                reject_if: proc { |attributes| attributes[:name].blank? },
                                allow_destroy: true
end

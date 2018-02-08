class Task < ApplicationRecord
  belongs_to :project, inverse_of: :tasks
end

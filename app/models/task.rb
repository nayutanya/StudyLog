class Task < ApplicationRecord
    has_many :study_logs, dependent: :nullify
    validates :title, presence: true, uniqueness: true
  end
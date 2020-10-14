class Song < ApplicationRecord
    # include ActiveModel::Validations
    # validates_with TitleValidator
    validates :title, presence: true
    # validates :release_year, numericality: {less_than: Time.now.year}, if: -> { :released || require_validation }



end

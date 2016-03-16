class Recipe < ActiveRecord::Base
  has_many :steps

  accepts_nested_attributes_for :steps, reject_if: :reject_steps, allow_destroy: true

  def reject_steps(attributes)
    attributes['description'].blank?
  end
end

class CompoundJournal < ApplicationRecord
  belongs_to :account
  
  validates :description, length: { maximum: 200 }

  validate :account_title_is_exist
  validate :right_account_title_is_exist

  def account_title_is_exist
    errors.add(:amount, "を入力してください。") if amount.nil? && account_title.present?
  end

  def right_account_title_is_exist
    errors.add(:right_amount, "を入力してください。") if right_amount.nil? && right_account_title.present?
  end
end

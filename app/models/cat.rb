class Cat < ApplicationRecord
  include RankedModel
  ranks :row_order

  # ransackでsortする際に絞り込むカラムの許可が必要みたい
  def self.ransackable_attributes(auth_object = nil)
    ["age", "created_at", "id", "id_value", "name", "updated_at"]
  end

  def no_ransack_search
    Cat
    .where("name LIKE ?", "%#{name}%")
    .where(age: age)
  end
end

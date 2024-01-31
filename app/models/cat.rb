class Cat < ApplicationRecord

  # ransackでsortする際に絞り込むカラムの許可が必要みたい
  def self.ransackable_attributes(auth_object = nil)
    ["age", "created_at", "id", "id_value", "name", "updated_at"]
  end
end

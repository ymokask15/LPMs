class LostItem < ApplicationRecord

  validate :error_check

  def error_check
    # 落とし物名が空白の時
    if item_name.blank?
        errors[:base] << '落とし物名は必ず入力してください'
    end 


    # 拾った場所が空白の時
    if where_picked.blank?
        errors[:base] << '拾った場所は必ず入力してください'
    end 

    # カテゴリーが空白の場合
    if category.blank?
        errors[:base] << 'カテゴリーは必ず入力してください'
    end 

  end
end

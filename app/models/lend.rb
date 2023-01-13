class Lend < ApplicationRecord

  validate :error_check

  def error_check

    if name.blank?
        errors[:base] << '名前を入力してください'
    end

    if loaned_out.blank?
        errors[:base] << '貸し出したものを入力してください'
    end

    errors.add(:return_date, "返却日を変更してください。") unless
    self.loaned_date < self.return_date 
    
  end 

  def self.search(search)
    if search
      Lend.where(['content LIKE ?', "%#{search}%"])
    else
      Lend.all
    end
  end

end

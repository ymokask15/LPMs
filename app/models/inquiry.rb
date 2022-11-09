class Inquiry < ApplicationRecord

    validate :error_check

    def error_check
        #nameが空のときにエラーメッセージを追加する
        if name.blank?
            errors[:base] << '学籍番号・氏名は必ず入力してください'
        end

        #matterが空のときにエラーメッセージを追加する
        if matter.blank?
            errors[:base] << '用件にチェックを入れてください'
        end
    end

end

# == Schema Information
#
# Table name: pois
#
#  id         :integer          not null, primary key
#  subj       :text
#  instruc    :text
#  tm         :text
#  rm         :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Poi < ActiveRecord::Base
  searchkick

  def self.search(search)

    if search
      where(['subj LIKE ?', "%#{search}%"])
    else
      all
    end
  end
end

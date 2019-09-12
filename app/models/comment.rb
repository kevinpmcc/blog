class Comment < ApplicationRecord
  belongs_to :article

  def nice_commenter
    Array.new(1000).map {|x| 0 }
    commenter
  end
end

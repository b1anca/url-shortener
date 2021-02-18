class Url < ApplicationRecord
  include EncodingDecodingBijective

  after_create :update_shortened

  def update_shortened
    update(shortened: bijective_encode(id))
  end
end

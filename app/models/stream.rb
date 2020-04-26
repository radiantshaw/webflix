class Stream < ApplicationRecord
  before_create :generate_key
  mount_uploader :file, StreamFileUploader

  private

  def generate_key
    self.key = SecureRandom.hex(22)
  end
end
class Resume < ActiveRecord::Base
  attr_accessor :resume_file
  belongs_to :user
  before_save :upload_file

  private
  def upload_file
    azure_blob_service = Azure::BlobService.new
    content = resume_file.read
    name = SecureRandom.hex
    result = azure_blob_service.create_block_blob(AZURE_CONTAINER, name , content)
    self.url = result.name
  end


end

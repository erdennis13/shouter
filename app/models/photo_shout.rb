class PhotoShout < ActiveRecord::Base
	has_attached_file :image, styles: {
		medium: "200x200>"
	}
	validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png"]

	def index
		image_file_name
	end
end

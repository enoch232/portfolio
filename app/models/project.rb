class Project < ActiveRecord::Base
	has_attached_file :photo, styles: { thumb: "1000x1000#"}, default_url: "/images/:style/missing.png"
  	validates_attachment_content_type :photo, content_type: /\Aimage\/.*\Z/
end

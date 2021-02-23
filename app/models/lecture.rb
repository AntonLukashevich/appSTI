class Lecture < Block
	belongs_to :course
	has_rich_text :content
end

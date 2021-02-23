class Course < ApplicationRecord
	has_many :blocks

	has_many :lectures
end

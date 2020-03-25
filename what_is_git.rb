require 'jcode'
$KCODE='u'
class WhatIsGit
	def about(lang = language)
		puts "http://#{lang}.wikipedia.org/wiki/Git"
	end

	def show
		case input('Do you understand the basis of Git? [yes/no]')
		when 'yes', 'y'
			puts 'Git is easy.'
		else
			puts 'Git is difficult...'
		end
	end

	private
		def input(message)
			puts message
			gets.chomp.tr('A-Za-z','A-Za-z').downcase
		end

	def language
		ENV['LANG'][0..1] || 'en'
	end

end
#stash1
#stash2


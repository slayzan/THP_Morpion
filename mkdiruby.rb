def mkdiruby
	gemfiledata = "source \"https://rubygems.org\"\nruby '2.5.1'\ngem 'rubocop', '~> 0.57.2'\ngem 'rspec'\ngem 'pry'\ngem 'dotenv'\n"
	
	abort("mkdiruby: need a single input") if ARGV.empty? || !ARGV.one?
	File.exist?(ARGV.first) ? abort("mkdiruby: Dir already exist") : Dir.mkdir(ARGV.first)
	File.open("#{ARGV.first}/Gemfile", "w") { |f| f.write gemfiledata}
	system("git init #{ARGV.first}")
	File.open("#{ARGV.first}/.gitignore", "w") { |f| f.write ".env\n"}
	File.open("#{ARGV.first}/.env", "w")
	Dir.mkdir("#{ARGV.first}/lib")
	system("rspec --init")
	system("mv spec/ #{ARGV.first}")
	File.open("#{ARGV.first}/Readme.md", "w") { |f| f.write "###Ruby"}
end

mkdiruby
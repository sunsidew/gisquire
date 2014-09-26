namespace :db do
	desc "database.yml's information hide and set rake tool"

	task :setclr do
		text = File.read('config/database.yml')
		text.gsub!(/password:.*/, 'password: ')
		text.gsub!(/database:.*/, 'database: ')
		File.open('config/database.yml', 'w') { |f| f.write(text) }
	end

	task :seton, [:passwd, :db] do |t, args|
		text = File.read('config/database.yml')
		text.gsub!(/password:.*/, 'password: '+args.passwd)
		text.gsub!(/development:\n.*\n.*/, "development:"+"\n  "+"<<: *default"+"\n  "+"database: "+args.db)
		File.open('config/database.yml', 'w') { |f| f.write(text) }
	end
end
require 'watir'
require 'require_all'
require 'yaml'
require 'active_record'
require 'pp'
require_all 'models/*.rb'

# connect to database
db_config = YAML::load(File.open('config/database.yml'))
ActiveRecord::Base.establish_connection(db_config)

AuthKey.find_each do |a|
	puts '=================='
	pp a
	puts '==========end====='
end

auth_key = AuthKey.create!(value: 'test', result: 'ok', note: 'test')

# url = 'www.google.com'
# b = Watir::Browser.new :chrome, :switches => ['--proxy-server=socks5://127.0.0.1:14000']

# b.goto url

# sleep(5)

# b.close

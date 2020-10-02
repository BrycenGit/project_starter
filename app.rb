#!/usr/bin/env ruby
require 'fileutils'

Dir.chdir "C:/Users/Brycen/Desktop"
puts Dir.pwd
puts "project name?"
name = gets.chomp
Dir.mkdir("#{name}")
Dir.chdir "C:/Users/Brycen/Desktop/#{name}"
FileUtils.mkdir(['lib', 'spec', 'views', 'public', 'public/stylesheets'])
FileUtils.touch(['README.md', 'Gemfile', 'app.rb', "config.ru", "lib/#{name}.rb", "spec/#{name}_spec.rb", "views/layout.erb", "public/stylesheets/master.css"])
File.write("app.rb", "#!/usr/bin/env ruby")

File.write("views/layout.erb",
"<!DOCTYPE html>
<html>
  <head>
    <title>#{name}</title>
    <link rel='stylesheet' href='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css'>
    <link rel='stylesheet' type='text/css' href='/stylesheets/master.css'> 
  </head>
  <body>
    <div class='container'>
      <%= yield %>
    </div>
  </body>
</html>")

File.write("Gemfile",
"source('https://rubygems.org')

gem('sinatra')
gem('rspec')
gem('capybara')
gem('pry')
gem('sinatra-contrib')")

File.write("config.ru",
"require ('./app')
run Sinatra::Application")

File.write("README.md",
"# _#{name.capitalize}_

_Version 1, {DATE}_

#### _{WHAT WILL IT DO}_

### By: _**Brycen Bartolome**_

## Description

_{DESCRIPTION HERE}_

## Specifications

| Spec | Behavior | Input | Output |
| ---- | -------- | ----- | ------ |
| 1    |          |       |        |


## Setup & Installation

- Clone project to desktop <code>\$ git clone {REPO LINK}</code>
- Move to project directory <code>\$ cd #{name}</code>
- Open project in vscode <code>\$ code .</code>
- In terminal run <code>\$ bundle install</code>
- In terminal run <code>\$ rspec</code>
- In vscode terminal run <code>\$ ruby app.rb</code>

## Known Bugs

_There are no known bugs_

## Technologies Used

- Ruby
- Gems: rspec, rack
- {MORE TECH}

### License

Copyright (c) 2020 **Brycen Bartolome**

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the 'Software'), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.")

puts "Thank you, Enjoy!"
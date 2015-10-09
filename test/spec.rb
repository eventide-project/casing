require_relative 'test_init'

Runner.('spec/**/*.rb') do |exclude|
  exclude =~ /(_init.rb|sketch.rb)\z/
end

task :console do
  require 'irb'
  require 'irb/completion'
  require 'my_gem' # You know what to do.

  def reload!
    # Change 'my_gem' here too:
    files = $LOADED_FEATURES.select { |feat| feat =~ /\/lol_api\// }
    files.each { |file| load file }
  end

  ARGV.clear
  IRB.start
end
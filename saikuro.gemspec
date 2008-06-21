require 'rubygems'

spec = Gem::Specification.new do |s|
  s.name = "Saikuro"
  s.version = "1.1.0"
  s.author = "Zev Blut"
  s.email = "zb@ubit.com"
  s.homepage = "http://saikuro.rubyforge.org/"
  s.rubyforge_project = 'saikuro'
  s.platform = Gem::Platform::RUBY
  s.summary = "Saikuro is a Ruby cyclomatic complexity analyzer.  When given Ruby
  source code Saikuro will generate a report listing the cyclomatic
  complexity of each method found.  In addition, Saikuro counts the
  number of lines per method and can generate a listing of the number of
  tokens on each line of code."
  candidates = Dir.glob("{bin,lib,tests}/**/*")
  s.files = candidates.delete_if do |item|
    item.include?(".svn") || item.include?("rdoc")
  end
  s.executables = ['saikuro']
  s.has_rdoc = true
  s.extra_rdoc_files = ["README"]
end



if __FILE__ == $0
  Gem::manage_gems
  Gem::Builder.new(spec).build
end


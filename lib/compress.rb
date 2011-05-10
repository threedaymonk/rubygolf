here = File.dirname(File.expand_path(__FILE__))
source = File.read(here + "/source.rb")
spaced = source.unpack("C*").map{|a|" "*a}.join("\n")
stub = <<END
  eval '%s'.split(/\n/).map(&:size).pack("C*")
END
File.open(here+"/golf.rb", "w") do |f|
  f << stub % spaced
end

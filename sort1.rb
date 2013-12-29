# Dir["d:/dropbox/**/*"].sort{|a,b| File.mtime(a) <=> File.mtime(b)}
Dir["/Users/lunbest/Dropbox/**/*"].sort_by{|a| File.mtime(a)}.each {|x|puts x}
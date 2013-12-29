require 'cgi'
require 'cgi/session'
require 'cgi/session/pstore'

# session = CGI::Session.new(cgi,
#   'database_manager'=>CGI::Session::PStore, # this can be replaced by CGI::Session::FileStore, CGI::Session::MemoryStore etc
#   'session_expires'=>Time.now + 30 * 60
#   )
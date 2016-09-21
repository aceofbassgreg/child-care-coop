require 'minitest/autorun'
require 'minitest/pride'

require 'sinatra/activerecord'

ENV['RACK_ENV'] = 'test'

ActiveRecord::Base.establish_connection(:test)

#Set up fixtures and such
class ActiveSupport::TestCase
  include ActiveRecord::TestFixtures
  include ActiveRecord::TestFixtures::ClassMethods
  
  self.fixture_path = 'test/fixtures'
  self.use_transactional_fixtures = true
  self.use_instantiated_fixtures  = false

  # #Eliminate deprecation warning from ActiveSupport 4.2.4
  # def test_order
  #   :random
  # end
end

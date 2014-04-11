# encoding: utf-8

require 'hirama/git'

describe Hirama::Git do
  describe '#repository' do
    When(:repository) { Hirama::Git.new.repository }
    Then { repository == 'yasuhito/hirama' }
  end
end

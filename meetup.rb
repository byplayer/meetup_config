# Sample class to load configuration
class Meetup
  attr_accessor :group, :organizer, :sponsors

  def self.load(path)
    fail "config file not found: #{path}" unless File.exist?(path)

    mt = new
    File.open(path, 'r') do |file|
      mt.instance_eval(File.read(path), path)
    end

    mt
  end

  private

  def meetup
    yield self
  end
end


require 'rspec'
require_relative 'message_filter'

# describe MessageFilter do
describe MessageFilter, 'with argument "foo"' do

  subject { MessageFilter.new('foo') }
  it { should be_detect('hello from foo') }
  it { should_not be_detect('hello, world!') }

#  # before do
#  #   @filter = MessageFilter.new('foo')
#  # end
#  # subject { @filter }
#  subject { MessageFilter.new('foo') }
#
#  # it 'should detect message with NG word' do
#  it {
#    # @filter.detect?('hello from foo').should == true
#    # @filter.should be_detect('hello from foo')
#    should be_detect('hello from foo')
#  # end
#  }
#
#  # it 'should not detect message without NG word' do
#  it {
#    # @filter.detect?('hello, world!').should == false
#    # @filter.should_not be_detect('hello, world!')
#    should_not be_detect('hello, world!')
#  # end
#  }

end


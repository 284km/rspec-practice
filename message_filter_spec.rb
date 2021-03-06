
require 'rspec'
require_relative 'message_filter'

describe MessageFilter do

  share_examples_for 'MessageFilter with argument "foo"' do
    it { should be_detect('hello from foo') }
    it { should_not be_detect('hello, world!') }
    its(:ng_words) { should_not be_empty }
  end

  # describe 'with argument "foo"' do
  context 'with argument "foo"' do
    subject { MessageFilter.new('foo') }
    it_should_behave_like 'MessageFilter with argument "foo"'

    # # # it 'ng_words should not be empty' do
    # # #   # subject.ng_words.empty?.should == false
    # # #   subject.ng_words.should_not be_empty
    # # # end
    # # #
    # # it { subject.ng_words.should_not be_empty }
    # its(:ng_words) { should_not be_empty }

    # # # it 'ng_words size is 1' do
    # # #   # subject.ng_words.size.should == 1
    # # #   subject.ng_words.should have(1).items
    # # # end
    # # it { subject.ng_words.should have(1).items }
    # its(:ng_words) { should have(1).items }
    it { should have(1).ng_words }
  end

  # describe 'with argument "foo", "bar"' do
  context 'with argument "foo", "bar"' do
    subject { MessageFilter.new('foo', 'bar') }
    it { should be_detect('hello from bar') }
    it_should_behave_like 'MessageFilter with argument "foo"'
    it { should have(2).ng_words }
  end

end

# share_examples_for 'MessageFilter with argument "foo"' do
#   it { should be_detect('hello from foo') }
#   it { should_not be_detect('hello, world!') }
# end
#
# # describe MessageFilter do
# describe MessageFilter, 'with argument "foo"' do
#
#   subject { MessageFilter.new('foo') }
#   # it { should be_detect('hello from foo') }
#   # it { should_not be_detect('hello, world!') }
#   it_should_behave_like 'MessageFilter with argument "foo"'
#
# #  # before do
# #  #   @filter = MessageFilter.new('foo')
# #  # end
# #  # subject { @filter }
# #  subject { MessageFilter.new('foo') }
# #
# #  # it 'should detect message with NG word' do
# #  it {
# #    # @filter.detect?('hello from foo').should == true
# #    # @filter.should be_detect('hello from foo')
# #    should be_detect('hello from foo')
# #  # end
# #  }
# #
# #  # it 'should not detect message without NG word' do
# #  it {
# #    # @filter.detect?('hello, world!').should == false
# #    # @filter.should_not be_detect('hello, world!')
# #    should_not be_detect('hello, world!')
# #  # end
# #  }
#
# end
#
# describe MessageFilter, 'with argument "foo", "bar"' do
#   subject { MessageFilter.new('foo', 'bar') }
#   it { should be_detect('hello from bar') }
#   # it { should be_detect('hello from foo') }
#   # it { should_not be_detect('hello, world!') }
#   it_should_behave_like 'MessageFilter with argument "foo"'
# end


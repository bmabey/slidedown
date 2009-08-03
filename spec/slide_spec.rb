require File.join(File.dirname(__FILE__), 'helper')

describe 'SlideDown' do
  include TestHelp

  it 'has text' do
    with_markdown <<-MD
    |# foo
    MD
    slide.text.should include('# foo')
  end
  
  it 'gets class names' do
    with_markdown <<-MD
    |# foo
    MD
    slide('code').classes.should == ['code']
  end
  
  it 'gets html' do
    with_markdown <<-MD
    |# foo
    MD
    Nokogiri(slide.html).at('h1').text.should == 'foo'
  end
  
  it 'syntax highlights' do
    with_markdown <<-MD
    |@@@ ruby
    |  def foo
    |    :bar
    |  end
    |@@@
    MD
    Nokogiri(slide.html).at('.code.ruby').should_not be_nil
  end

  it 'syntax highlights html+erb' do
    with_markdown <<-MD
    |@@@ html+erb
    |  <p>Hello <%= @user.name %> </p>
    |@@@
    MD
    Nokogiri(slide.html).at('.code.html+erb').should_not be_nil
  end

end

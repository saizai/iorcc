require File.expand_path('../../lib/column', __FILE__)

describe Column do
  let(:example) {[
    "this is the first row",
    "there are more columns here",
    "here is another row"
  ]}

  it 'justifies columns in an uneven array of strings' do
    Column.format(example).should == [
      "this  is  the     first   row ",
      "there are more    columns here",
      "here  is  another row         "
    ]
  end

  it 'accepts a custom delimeter character' do
    example_pipe = example.map {|r| r.gsub(' ', '|') }
    Column.format(example_pipe, '|').should == [
      "this  is  the     first   row ",
      "there are more    columns here",
      "here  is  another row         "
    ]
  end

  it 'handles an alignment format string similar to markdown table syntax' do
    align = "|:-|-:|::|-:"
    Column.format(example, ' ', align).should == [
      "this  is      the  first   row",
      "there are    more columns here",
      "here  is  another   row       "
    ]
  end
end

describe 'Ruby on Rails' do 
	it { is_expected.to start_with("Ruby").and end_with("s") }
	it { expect(fruta).to eq('banana').or eq('laranja').or eq('uva') }

end
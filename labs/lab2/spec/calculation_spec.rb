require './lib/calculation'
require 'csv'

RSpec.describe Calculation do
  describe 'Tests' do
    let(:file) do
      CSV.read('./lib/exm.csv', headers: true,
                                converters: :numeric)
    end
    let(:array_of_string) { file['Прирост населения'] }
    let(:ob_calc) { Calculation.new(array_of_string) }
    let(:search_max) { ob_calc.search_max }
    let(:search_min) { ob_calc.search_min }
    let(:search_mean) { ob_calc.search_mean }
    let(:search_dispersion) { ob_calc.search_corrected_sample_variance }

    context 'search max' do
      it { expect(search_max).to eq(12_213) }
    end

    context 'search min' do
      it { expect(search_min).to eq(-1423) }
    end

    context 'search mean' do
      it { expect(search_mean).to eq(2489.29) }
    end

    context 'search dispersion' do
      it { expect(search_dispersion).to eq(21_675_564.9) }
    end
  end
end

require './lib/conversion'

RSpec.describe Conversion do
  describe '.run_conversion' do
    let(:run_C_C) { Conversion.run_conversion(0, 'C', 'C') }
    let(:run_C_F) { Conversion.run_conversion(0, 'C', 'F') }
    let(:run_K_C) { Conversion.run_conversion(273.15, 'K', 'C') }
    let(:run_K_F) { Conversion.run_conversion(0, 'K', 'F') }
    let(:run_F_C) { Conversion.run_conversion(0, 'F', 'C') }
    context 'conversion_C_C' do
      it { expect(run_C_C).to eq(0) }
    end
    context 'conversion_C_F' do
      it { expect(run_C_F).to eq(32) }
    end
    context 'conversion_K_C' do
      it { expect(run_K_C).to eq(0) }
    end
    context 'conversion_K_F' do
      it { expect(run_K_F).to eq(-459.67) }
    end
    context 'conversion_F_C' do
      it { expect(run_F_C).to eq(-17.77777777777778) }
    end
  end
end

require 'spec_helper'

describe Administrate::Field::LatLng do
  
  subject { described_class.new(field, 'lat_lng', :form) }
  before(:each) do
    allow(subject).to receive(:options).and_return(options)
  end
  
  context 'lat' do
    let(:field)   { :my_lat }
    let(:options) { {lat: true} }
    describe '#lat?' do
      it { expect(subject.lat?).to be true }
    end
    describe '#lng?' do
      it { expect(subject.lng?).to be false }
    end
    describe '#which' do
      it { expect(subject.which).to eq(:lat) }
    end
  end
  context 'lng' do
    let(:field)   { :my_lng }
    let(:options) { {lng: true} }
    describe '#lat?' do
      it { expect(subject.lat?).to be false }
    end
    describe '#lng?' do
      it { expect(subject.lng?).to be true }
    end
    describe '#which' do
      it { expect(subject.which).to eq(:lng) }
    end
    describe '#initial' do
      it 'is default' do
        expect(subject.initial).to eq([53.8003,-1.5519])
      end
    end
    describe '#zoom' do
      it 'is default' do
        expect(subject.zoom).to eq(11)
      end  
    end
    context 'with options' do
      let(:options) { {lng: true, initial: [35.6809, 139.7672], zoom: 8} }
      describe '#intial' do
        it 'is overridden' do
          expect(subject.initial).to eq([35.6809, 139.7672])
        end
      end
      describe '#zoom' do
        it 'is overridden' do
          expect(subject.zoom).to eq(8)
        end
      end
    end
      
  end

end

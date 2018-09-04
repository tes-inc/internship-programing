require 'spec_helper'
require './app/fizz_buzz'

RSpec.describe FizzBuzz do
  let(:instannce) { described_class.new }

  describe '#response' do
    subject { instannce.response(argument) }

    context '引数が3の倍数である場合' do
      let(:argument) { 3 }

      it 'Fizzを返すこと' do
        expect(subject).to eq('Fizz')
      end
    end

    context '引数が5の倍数である場合' do
      let(:argument) { 5 }

      it 'Buzzを返すこと' do
        expect(subject).to eq('Buzz')
      end
    end

    context '引数が3と5の倍数である場合' do
      let(:argument) { 15 }

      it 'FizzBuzzを返すこと' do
        expect(subject).to eq('FizzBuzz')
      end
    end

    context '引数に1を与えた場合' do
      let(:argument) { 1 }

      it '1を返すこと' do
        expect(subject).to eq(1)
      end
    end

    context '引数に99を与えた場合' do
      let(:argument) { 99 }

      it 'Fizzを返すこと' do
        expect(subject).to eq('Fizz')
      end
    end

    context '引数に100を与えた場合' do
      let(:argument) { 100 }

      it 'Buzzを返すこと' do
        expect(subject).to eq('Buzz')
      end
    end
    
    context '無効な値を引数に指定するテスト' do
      context '引数に0を与えた場合' do
        let(:argument) { 0 }

        it 'ArgumentErrorが発生すること' do
          expect {subject}.to raise_error(ArgumentError)
        end
      end

      context '引数に101を与えた場合' do
        let(:argument) { 101 }

        it 'ArgumentErrorが発生すること' do
          expect {subject}.to raise_error(ArgumentError)
        end
      end
    end
  end
end

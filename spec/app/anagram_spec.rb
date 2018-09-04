require 'spec_helper'
require './app/anagram'

RSpec.describe Anagram do
  describe '#equal?' do
    subject { described_class.equal?(first, second) }

    context '引数に同一の文字列を渡した場合' do
      let(:first) { 'abcde' }
      let(:second) { 'abcde' }

      it 'trueが返却されること' do
        is_expected.to be_truthy
      end
    end

    context '引数にアナグラムが成立する文字列を渡した場合' do
      let(:first) { 'abcde' }
      let(:second) { 'ceadb' }

      it 'trueが返却されること' do
        is_expected.to be_truthy
      end
    end

    context '引数にアナグラムが成立しない文字列を渡した場合' do
      let(:first) { 'abcde' }
      let(:second) { 'abcdf' }

      it 'falseが返却されること' do
        is_expected.to be_falsey
      end
    end

    context '不正な文字列を入力するテスト' do
      context '第一引数にnilを渡した場合' do
        let(:first) { nil }
        let(:second) { 'abcde' }

        it 'ArgumentErrorが発生すること' do
          expect {subject}.to raise_error(ArgumentError)
        end
      end

      context '第二引数にnilを渡した場合' do
        let(:first) { 'abcde' }
        let(:second) { nil }

        it 'ArgumentErrorが発生すること' do
          expect {subject}.to raise_error(ArgumentError)
        end
      end

      context '第一引数、第二引数にnilを渡した場合' do
        let(:first) { nil }
        let(:second) { nil }

        it 'ArgumentErrorが発生すること' do
          expect {subject}.to raise_error(ArgumentError)
        end
      end
    end
  end
end

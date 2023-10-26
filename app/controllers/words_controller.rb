require "csv"

class WordsController < ApplicationController
    def index
        render json: {words: get_words}
    end

    def kana_alphabet
        render json: {kana_alphabet: get_kana_alphabet}
    end

    private

    def get_words
        words = []
        path = "#{Rails.root}/public/csv/words.csv"
        CSV.foreach(path, encoding: "utf-8", headers: true) do |row|
            words.push [row[0], row[1]] #TODO: 絶対もっと良い書き方ある
        end
        words
    end
    
    def get_kana_alphabet
        kana_alphabet = {}
        path = "#{Rails.root}/public/csv/kana_alphabet.csv"
        CSV.foreach(path, encoding: "utf-8", headers: true) do |row|
            kana_alphabet[row[0]] = row[1] #TODO: 絶対もっと良い書き方ある
        end
        kana_alphabet
    end
end

require './test/test_helper'

class GoogleSpellcheckTest < Minitest::Test

  	def test_singleword_incorrect
	   	VCR.use_cassette('test_singleword_incorrect') do
	   		assert GoogleSpellcheck.check("aewsome"), "awesome"
	    end
	end

  	def test_singleword_correct
	   	VCR.use_cassette('test_singleword_correct') do
	   		assert GoogleSpellcheck.check("awesome"), true
	    end
	end

	def test_multiplewords_incorrect
	   	VCR.use_cassette('test_multiplewords_incorrect') do
	   		assert GoogleSpellcheck.check("programmming langauges too lean"), "programming languages to learn"
	    end
	end

	def test_quotes
	   	VCR.use_cassette('test_quotes') do
	   		assert GoogleSpellcheck.check("\"testing\" 'ruby'"), true
	    end
	end

	def test_did_you_mean
		VCR.use_cassette('test_did_you_mean') do
	   		assert GoogleSpellcheck.check("pythonprogramming"), "python programming"
	    end
	end
end

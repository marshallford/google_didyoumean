require 'httparty'
require 'json'
require 'nokogiri'
require 'cgi'

GOOGLE_URL = "https://www.google.com/search?q="

module GoogleSpellcheck
	def self.check(inputToCheck)
		inputToCheck = CGI::escape(inputToCheck.strip)
		obj = checkAndOpen(GOOGLE_URL + inputToCheck)
		correction = true
		if (!obj.css("a.spell i").text.empty?)
			correction = obj.css("a.spell i").text
		end
		return correction
	end
    def self.checkAndOpen(url)
		userAgent = "Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2228.0 Safari/537.36"
		begin
			openURLpage = open(url, {'User-Agent' => userAgent})
		rescue OpenURI::HTTPError => ex
			raise ex
		end

		if (openURLpage.size * 0.001) < 10 # raise error if page size is less than 10KB
  			raise "page size error: page size is " + (openURLpage.size * 0.001).to_s + "KB"
		end
		return Nokogiri::HTML(openURLpage)
	end

   	private_class_method :checkAndOpen
end

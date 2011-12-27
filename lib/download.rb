require 'net/http'
require 'uri'      

class Download

  def start_download url

    use_proxy = true
    proxy_addr = 'fw.elosoft.sc'
    proxy_port = 3128

    uri = URI.parse(url)

    if use_proxy
      Net::HTTP::Proxy(proxy_addr, proxy_port).start(uri.host) {|http|
        execute http, uri
      }      
    else
      Net::HTTP.start(uri.host) { |http|
        execute http, uri
      }
    end 
  end

  def execute http, uri
    resp = http.get(uri.path)
    resp.body
  end

end

module SinatraApp
  module Services
    class Service
      include RestClient

      def message_received
        print("ddddddd")
        var2 = [1,2,3,4,5,6,7,8,9,9,9,9,9,9,9,9]
        var2.map { |d|
          var = RestClient::Request
          abc = var.execute(method: "get", url: "http://localhost:8080/status")
          print(abc)

        }
        print("lola pra lusa")
      end
    end
  end
end

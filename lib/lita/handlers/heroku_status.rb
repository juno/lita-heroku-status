module Lita
  module Handlers
    class HerokuStatus < Handler
      CURRENT_STATUS_URL = 'https://status.heroku.com/api/v3/current-status'
      ISSUES_URL = "https://status.heroku.com/api/v3/issues?limit=5"

      route('heroku issues', :issues, command: true, help: { "heroku issues" => "Show last 5 issues." })
      route('heroku status', :status, command: true, help: { "heroku status" => "Show current Heroku status." })

      # @param response [Lite::Response]
      def issues(response)
        data = MultiJson.load(http.get(ISSUES_URL).body)
        message = ''
        data.each do |issue|
          message << "#{issue['created_at']}  #{issue['title']}  #{issue['full_url']}\n"
        end
        response.reply message
      end

      # @param response [Lite::Response]
      def status(response)
        data = MultiJson.load(http.get(CURRENT_STATUS_URL).body)
        prod_status = data['status']['Production']
        dev_status = data['status']['Development']
        response.reply "Heroku Status: Production is #{prod_status}, Development is #{dev_status}"
      end

      Lita.register_handler(self)
    end
  end
end

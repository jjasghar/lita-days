module Lita
  module Handlers
    class Days < Handler

      route(/^1 day$/i, :day1, command: false)
      route(/^(.*)\s+days$/i, :days, command: false, help: { "<number> days" => "Posts <number> days from now."} )

      def day1(request)
        t = DateTime.now
        time = (t + 1).to_time
        request.reply("#{time}")
      end

      def days(request)
        t = DateTime.now
        days = request.matches[0][0].to_i
        if days == 1
          request.reply("You need to work on your grammer")
        end
        time = (t + days).to_time
        request.reply("#{time}")
      end


    end

    Lita.register_handler(Days)
  end
end

# encoding: utf-8

module Github
  module RateLimit

    def ratelimit(*args)
      arguments(args)

      get_request("/rate_limit", arguments.params).rate.limit
    end

    def ratelimit_remaining(*args)
      arguments(args)

      get_request("/rate_limit", arguments.params).rate.remaining
    end

  end # RateLimit
end # Github

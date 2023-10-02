require "ferrum"

class BrowsingFacade
  include Singleton

  def visit(url:)
    @override_status = nil
    cleanup
    browser.go_to(url)
  rescue Ferrum::PendingConnectionsError,
         Ferrum::TimeoutError,
         Ferrum::StatusError
    @override_status = 500
  end

  def code
    return @override_status if @override_status

    if browser.network.traffic[0]&.response&.status == 301
      301
    else
      browser.network.status
    end
  end

  def cleanup
    browser.reset
  end

  # If code was 301 then redirect_to will return the new url.
  def redirect_to
    browser.network.traffic[0].response.headers["Location"]
  end

  def quit
    browser.quit
    @browser = nil
  end

  def browser
    @browser ||= Ferrum::Browser.new(timeout: 30)
  end
end

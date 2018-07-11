class NewsletterJob < ApplicationJob
  queue_as :default

  def perform(*args)
    # Do something later
    puts " This is my first Job :) "
  end
end

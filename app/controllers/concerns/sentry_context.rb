# frozen_string_literal: true

module SentryContext
  extend ActiveSupport::Concern

  included do
    before_action :set_sentry_context
  end

  private

  def set_sentry_context
    # Attach the authenticated user (if any)
    if respond_to?(:current_user, true) && current_user.present?
      Sentry.set_user(
        id: current_user.id,
        email: current_user.email,
        username: (current_user.respond_to?(:display_name) ? current_user.display_name : nil)
      )
    else
      # Clear user to avoid leaking across requests in reused threads
      Sentry.set_user(nil)
    end

    # Basic request-scoped metadata
    Sentry.set_extras(
      request_id: request.request_id,
      remote_ip: request.remote_ip
    )

    Sentry.set_tags(
      controller: params[:controller],
      action: params[:action]
    )
  end
end

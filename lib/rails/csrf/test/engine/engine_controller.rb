# frozen_string_literal: true

module Rails
  module Csrf
    module Test
      module Engine
        class EngineController < ActionController::Base
          include ActionController::RequestForgeryProtection

          protect_from_forgery with: :exception, unless: :should_skip_csrf_checks?

          def foo
            render plain: 'ok'
          end

          protected

          def should_skip_csrf_checks?
            true
          end
        end
      end
    end
  end
end

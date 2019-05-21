# frozen_string_literal: true

module Rails
  module Csrf
    module Test
      module Engine
        class Engine < ::Rails::Engine
          isolate_namespace Rails::Csrf::Test::Engine

          # Uncomment to fix.
          # initializer 'csrf-protection', after: 'action_controller.request_forgery_protection' do |app|
          #   Rails::Csrf::Test::Engine::EngineController.class_eval do
          #     protect_from_forgery with: :exception, unless: :should_skip_csrf_checks?
          #   end
          # end
        end
      end
    end
  end
end

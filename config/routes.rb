# frozen_string_literal: true

Rails::Csrf::Test::Engine::Engine.routes.draw do
  get '/foo', to: 'engine#foo'
end

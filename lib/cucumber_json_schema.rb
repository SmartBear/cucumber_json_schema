# frozen_string_literal: true

require 'cucumber_json_schema/version'

module CucumberJsonSchema
  SCHEMA = {
    'definitions' => {
      'tags' => {
        'type' => 'array',
        'items' => {
          'type' => 'object',
          'properties' => {
            'name' => {
              'type' => 'string'
            }
          }
        },
        'optional' => true
      }
    },
    'type' => 'array',
    'items' => {
      'type' => 'object',
      'properties' => {
        'uri' => {
          'type' => 'string'
        },
        'keyword' => {
          'type' => 'string'
        },
        'name' => {
          'type' => 'string'
        },
        'tags' => {
          '$ref': '#/definitions/tags'
        },
        'elements' => {
          'type' => 'array',
          'items' => {
            'type' => 'object',
            'properties' => {
              'keyword' => {
                'type' => 'string'
              },
              'name' => {
                'type' => 'string'
              },
              'tags' => {
                '$ref': '#/definitions/tags'
              },
              'steps' => {
                'type' => 'array',
                'items' => {
                  'type' => 'object',
                  'properties' => {
                    'keyword' => {
                      'type' => 'string'
                    },
                    'name' => {
                      'type' => 'string'
                    },
                    'result' => {
                      'type' => 'object',
                      'properties' => {
                        'status' => {
                          'type' => 'string'
                        },
                        'duration' => {
                          'type' => 'number'
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }.freeze
end

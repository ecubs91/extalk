#!/usr/bin/env ruby

require 'qiniu'

Qiniu.establish_connection! :access_key => '<%= ENV["ACCESS_KEY"] %>',
                            :secret_key => '<%= ENV["SECRET_KEY"] %>'
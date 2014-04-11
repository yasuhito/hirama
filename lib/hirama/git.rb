# encoding: utf-8

module Hirama
  # Git utilities.
  class Git
    def repository
      detected = remotes.find { |each| each[:remote] == 'upstream' }
      detected ||= remotes.find { |each| each[:remote] == 'origin' }
      detected[:repo]
    end

    private

    def remotes
      remote_regexp =
        %r{remote\.([^\.]+)\.url .*?([^:/]+)/([^/\s]+?)(?:\.git)?$}
      list = `git config --get-regexp remote\..+\.url`.split "\n"
      list.map! do |each|
        remote, user, repo = each.scan(remote_regexp).flatten
        { remote: remote, user: user, repo: "#{user}/#{repo}" }
      end
      list
    end
  end
end

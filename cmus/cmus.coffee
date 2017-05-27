cmus = require 'cmus-remote-node'

log = console.log

remote = new cmus()

str = ''

remote.status (status) ->
	if status and status.status isnt 'stopped'
		str += status.track.artist + ' - ' + status.track.title + ' '

		if status.status is 'playing'
			str += '  '

		if status.status is 'paused'
			str += '  '

		if status.settings.repeat_current is "true"
			str += '  '
		
		log str

	process.exit()

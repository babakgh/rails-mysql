require 'lograge'
class Logging
	def self.configure(config)
		# LOGGING!
		log_level = Rails.env.production? ? :info : :debug
		log_level_number = ::Logger.const_get(log_level.to_s.upcase)

		# LOGRAGE CONFIGURATION
		config.lograge.enabled = true
		config.lograge.formatter = Lograge::Formatters::Json.new

		# APP LOGGING
		logger = ::Logger.new(File.join(Rails.root, 'log', "#{Rails.env}.log"))
		# hostname = Socket.gethostname
		logger.formatter = proc do |severity, datetime, progname, msg|
			lograge_hash = nil
			lograge_hash = JSON.parse(msg) rescue nil if msg.is_a?(String)
			msg = 'ActiveRecord' if lograge_hash
			log_hash = {
				time: datetime.utc.strftime('%Y-%m-%dT%H:%M:%S.%3NZ'),
				pid: $$,
				thread_id: Thread.current.object_id.to_s(36),
				severity: severity,
				progname: progname,
				msg: msg.strip.force_encoding('UTF-8')
			}
			log_hash = log_hash.merge(lograge_hash) if lograge_hash
			json_string = nil
			begin
				json_string = "#{log_hash.to_json}\n"
			rescue
				# handle non-utf8 encodings
				log_hash[:msg] = msg.strip.force_encoding('ISO-8859-1').encode('UTF-8')
				json_string = "#{log_hash.to_json}\n"
			end
			json_string
		end

    tag_log = ActiveSupport::TaggedLogging.new(logger)
		config.logger = tag_log
		config.log_level = log_level
	end
end

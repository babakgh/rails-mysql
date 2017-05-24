class CustomLogger

	def self.log_request(remote_ip, message = '')
		# construct the message
		log_hash = {
			header: {
				remote_ip: remote_ip,
			},
			msg: message,
		}

		message_full = "#{log_hash.to_json}\n"

		# log to rails logger
		Rails.logger.info(message_full)
	end
end

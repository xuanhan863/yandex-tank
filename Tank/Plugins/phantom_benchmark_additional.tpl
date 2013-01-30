io_t benchmark_io$sequence_no = io_benchmark_t {
	method_t stream_method = $method_stream {
	    loggers = { 
			brief_logger 
			$comment_answ benchmark_logger 
	    }
	
	    source_t source_log = source_log_t {
			filename = "$stpd"     
	    }
	
	    $ssl_transport
	    
		proto_t http_proto$sequence_no = proto_http_t { 
			$reply_limits
		}
		
	    proto_t none_proto = proto_none_t { 
	    }
	    
	    proto=$proto
	    
	    address = $ip
	    port = $port
	    $bind
	    timeout = $timeout
	    source = source_log   
	}
	method = stream_method   
    
	times = simple_times
    
	instances = $instances   
	human_readable_report = false   
	scheduler = main_scheduler 
} 
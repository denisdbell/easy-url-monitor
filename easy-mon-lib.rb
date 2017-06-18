=begin
    
    -- Denis Bell -- <denisdbell@gmail.com> Emelius Enterprizes

    This is the core libray which is used by the monitoring program
 
=end


require 'net/http'
require 'json'
require 'securerandom'
require "./configuration"
require "./emailer"
require "./logger"

#Starts the monitoring process
def start_monitoring


    #Hash nap to store monitoring results
    monitor_results_hash = []

    #Read configuration
    config = read_configuration_file

    monitorDelayInSeconds = config['config']['monitorDelayInSeconds'];

    create_json_log_file

    while true
            
        begin
           
            count = 0

            for url in config['config']['urls']

            
                new_url = URI.parse(url['value'] + "?#{SecureRandom.uuid}" ) #Add UUID to prevent caching

                log "#{url['value']}?#{SecureRandom.uuid}"

                request = Net::HTTP::Get.new(new_url.to_s)

                response = Net::HTTP.start(new_url.host, new_url.port) {|http|
                    http.request(request)
                    }
                    

                monitor_results_hash[count] = { :url => url['value'], :status => if response.code.to_i >= 400 then 'Un-Available' else 'Available' end, :dateTime => Time.now.strftime("%d/%m/%Y %H:%M")
 }
                
                log "responded with a status of #{  response.code } "

                log monitor_results_hash.to_json.to_s

                count = count + 1

            end
                        
            log "
                    *******************************************************
                    Monitoring delayed by #{monitorDelayInSeconds} seconds
                    
                    ********************************************************        
                "

           
        rescue Exception => e   
         
            log e.message
            
            monitor_results_hash[count] = { :url => url['value'], :status => 'Un-Available', :dateTime => Time.now.strftime("%d/%m/%Y %H:%M")}
           

        ensure

            update_json_log_file(monitor_results_hash.to_json.to_s)
            
            #Delay monitoring of URLS by specified interval
            sleep monitorDelayInSeconds
            
        end

        
            
    end

end

#Validates input form the command line
def command_line_input_validation(command)

    if not ['monitor', 'init'].include? command 

        puts         "

                          INVALID COMMAND LINE ARGUMENT!!!!!! 

                          <-- #{ command } --> is not a recognized command. The list of accepted command are below:
                          
                          init - Creates the config.json file with default vaulues:

                          monitor- Starts the monitoring of the URLS 

                    "
        return

    end 

end





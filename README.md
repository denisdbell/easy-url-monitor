#Easy URL Monitor

This is a simple http/https url monitoring tool.

**Dependencies**

ruby version > 2.0 to 2.X

**How to run**

1. Clone the repository  

		git clone https://github.com/denisdbell/easy-url-monitor.git
	
2. Navigate to the **easy-url-monitor** folder.

3. Execute the ** monitor.sh** file with the ==init== command line argument.

		sh  monitor.sh init

4. This will create the  default **config.json** file, which you will need to modify:

		{
            "config": { 

                        "monitorDelayInSeconds":10,
                        "smtp":{
                            "smtpServer":"smtp.gmail.com", 
                            "smtpPort":587,
                            "sslRequired":true,
                            "username":"username@gmail.com",
                            "password":"password@gmail.com"
                        },
                        "emailAddresses":[

                            {
                                "value":"user@gmail.com"
                            }
                        ],
                        "urls":[
                            {
                              "value":"http://localhost:9090"
                            }
                        ]

                    }
         }
         
 5. After customizing the configuration you can start monitoring the URLS  added in the urls array of the config.json. Exebegicute the following command to start monitoring process:
 
 		sh  monitor.sh monitor
 
 
	

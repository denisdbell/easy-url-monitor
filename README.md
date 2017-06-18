**Easy URL Monitor**

This is a simple application used for monitoring http/https url's.

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
         
 5. After customizing the configuration, you can start monitoring the URLS  added int the config.json. Execcute the following command to start the monitoring process:
 
 		sh  monitor.sh monitor
		

6. Navigate to http://localhost:3456 and you should see the following web page displayed:

![alt text](https://raw.githubusercontent.com/denisdbell/easy-url-monitor/master/eum-dashboard.png)


You are now in business!!! Reach out to me directly at denisdbell@gmail.com if you have any feedback/concerns. Also feel free to fork the repo and improve the application


**TO DO**

- Add unit and integration tests
- Add ability to modify the configuration file from the web interface
- Add functionilty to send emai when URLl is inactive.
- Add rich reporting and dashboards
- Create script to install eum as a service so that it can be stared and stopped.
- Add it to the apt repository

 
 
	


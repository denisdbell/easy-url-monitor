 
#Wrapper bash file

command=$1

echo "
#  ███████╗ █████╗ ███████╗██╗   ██╗    ██╗   ██╗██████╗ ██╗         ███╗   ███╗ ██████╗ ███╗   ██╗██╗████████╗ ██████╗ ██████╗ 
#  ██╔════╝██╔══██╗██╔════╝╚██╗ ██╔╝    ██║   ██║██╔══██╗██║         ████╗ ████║██╔═══██╗████╗  ██║██║╚══██╔══╝██╔═══██╗██╔══██╗
#  █████╗  ███████║███████╗ ╚████╔╝     ██║   ██║██████╔╝██║         ██╔████╔██║██║   ██║██╔██╗ ██║██║   ██║   ██║   ██║██████╔╝
#  ██╔══╝  ██╔══██║╚════██║  ╚██╔╝      ██║   ██║██╔══██╗██║         ██║╚██╔╝██║██║   ██║██║╚██╗██║██║   ██║   ██║   ██║██╔══██╗
#  ███████╗██║  ██║███████║   ██║       ╚██████╔╝██║  ██║███████╗    ██║ ╚═╝ ██║╚██████╔╝██║ ╚████║██║   ██║   ╚██████╔╝██║  ██║
#  ╚══════╝╚═╝  ╚═╝╚══════╝   ╚═╝        ╚═════╝ ╚═╝  ╚═╝╚══════╝    ╚═╝     ╚═╝ ╚═════╝ ╚═╝  ╚═══╝╚═╝   ╚═╝    ╚═════╝ ╚═╝  ╚═╝
#                                                                                                                                                           
# Product Of Emelius Enterprizes - Create and Evolve
"

ruby monitor.rb $command ; ruby -run -e httpd ./public/ -p 3456 


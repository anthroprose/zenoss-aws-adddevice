import httplib2
import sys
import syslog

try:
    resp, macs = httplib2.Http(proxy_info = '').request("http://169.254.169.254/latest/meta-data/network/interfaces/macs")
    resp, private_ip = httplib2.Http(proxy_info = '').request("http://169.254.169.254/latest/meta-data/network/interfaces/macs/\" + macs + \"/local-ipv4s/")
    
    
except:
    syslog.syslog(syslog.LOG_ERR, "Unhandled Exception: " + str(sys.exc_info()))
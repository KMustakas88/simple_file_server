case $1 in
    "start" )
        echo "start python SimpleHTTPServer"
        nohup python .file_server.py > /tmp/nohup.out &
    ;;
    "stop" )
        echo "stop python SimpleHTTPServer"
        kill `ps aux | grep "python .file_server.py"` | grep -v grep | awk '{print $2}' > /dev/null
    ;;
    "restart" )
        echo "restart python SimpleHTTPServer"
        kill `ps aux | grep "python .file_server"` | grep -v grep | awk '{print $2}' > /dev/null
        nohup python ./.file_server.py > /tmp/nohup.out &
    ;;
    *)
    echo "need start|stop|restart"
    exit 1
esac

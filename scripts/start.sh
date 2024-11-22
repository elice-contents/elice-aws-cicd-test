#!/bin/bash
# 기존 애플리케이션 종료
PID=$(pgrep -f 'node /home/ec2-user/build/index.js')
if [ -n "$PID" ]; then
    sudo kill -9 $PID
fi

# 새 애플리케이션 시작
nohup node index.js > /dev/null 2>&1 &
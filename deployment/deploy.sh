#!/usr/bin/env bash

cmd="cd /Users/junxingmo/dev/kdb-test/deployment/kdb-app; gcloud deployment-manager deployments update kdb-app --template=kdb-app.jinja --properties=infrastructureName:test,environment:test1"
count=1

while : ; do
    echo ${cmd}

    eval ${cmd}

    if [ $? -eq 0 ]; then
        echo "count=" ${count}
        break
    fi

    echo "count=" ${count}
    count=$(expr ${count} + 1)
    sleep 60
done
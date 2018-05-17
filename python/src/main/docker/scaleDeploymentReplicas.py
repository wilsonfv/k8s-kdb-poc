from urllib.request import Request, urlopen
from urllib.parse import urlencode
import json
import ssl
import sys
import datetime


def log(msg):
    print(datetime.datetime.utcnow().strftime('%Y-%m-%d %H:%M:%S.%f') + ' ' + msg)


if len(sys.argv) == 3:
    deploymentName = sys.argv[1]
    newReplicasValue = int(sys.argv[2])
else:
    raise ValueError('Not enough parameters')

with open('/config/gcp-env.conf') as f:
    config = json.loads(f.read())
    f.close()

with open('/var/run/secrets/kubernetes.io/serviceaccount/token') as f:
    token = f.read()
    f.close()

log('gcp-env.conf: ' + str(config))

namespace = config['k8sNamespace']

log('namespace: ' + namespace)

header = {
    'Authorization': 'Bearer ' + token,
    'Accept': 'application/json',
    'Content-Type': 'application/json'
}

url = "https://kubernetes.default.svc.cluster.local/" \
      "apis/extensions/v1beta1/namespaces/{namespace}/" \
      "deployments/{deployment}".format(namespace=namespace, deployment=deploymentName)

log('kubernetes url: ' + url)

ctx = ssl.create_default_context()
ctx.check_hostname = False
ctx.verify_mode = ssl.CERT_NONE

req = Request(url=url, headers=header, method='GET')
res = urlopen(req, context=ctx)

deploymentConfig = json.loads(res.read().decode(encoding='utf-8'))

log('current deployment config: ' + str(deploymentConfig))

deploymentConfig['spec']['replicas'] = newReplicasValue

log('new deployment config: ' + str(deploymentConfig))

req = Request(url=url, headers=header, method='PUT', data=json.dumps(deploymentConfig).encode(encoding='utf-8'))
res = urlopen(req, context=ctx)

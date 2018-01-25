from json import dumps

def GenerateConfig(context):
  """Generates configuration of a VM."""
  resources = [{
      'name': 'configmap-files',
      'type': context.properties['k8sConfigMapType'],
      'properties': {
          'apiVersion': 'v1',
          'kind': 'ConfigMap',
          'namespace': context.properties['k8sNamespace'],
          'metadata': {
            'name':'configmap-files'
          },
          'data': {
            'gcp-env.conf': dumps(context.properties['gcpEnv'])
          }
      }
  }]
  return {'resources': resources}
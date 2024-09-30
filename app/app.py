from flask import Flask, jsonify
from kubernetes import client, config

app = Flask(__name__)

@app.route('/')
def welcome():
    return "Welcome to Barkuni Corp!"

@app.route('/pods')
def pods():
    config.load_kube_config()
    v1 = client.CoreV1Api()
    pods = v1.list_namespaced_pod(namespace='kube-system')
    pod_names = [pod.metadata.name for pod in pods.items]
    return jsonify(pod_names)

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)

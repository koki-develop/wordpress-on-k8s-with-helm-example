Kubernetes + Helm で Wordpress + MySQL を構築するサンプルコード。

# 動作確認

クラスターを構築

```
$ kind create cluster --config kind.yaml
```

Ingress NGINX を導入

```
$ kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/main/deploy/static/provider/kind/deploy.yaml
$ kubectl wait --namespace ingress-nginx \
  --for=condition=ready pod \
  --selector=app.kubernetes.io/component=controller \
  --timeout=90s
```

起動

```
$ helm install wordpress ./wordpress
```

# 後片付け

```
$ kind delete cluster
```

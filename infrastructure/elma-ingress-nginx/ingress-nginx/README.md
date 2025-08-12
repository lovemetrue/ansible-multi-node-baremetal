# ingress-nginx

ingress-nginx — это контроллер входящего трафика в Kubernetes, который позволяет управлять входящим трафиком в кластере. Он обеспечивает единую точку входа для всех сервисов в кластере и позволяет настроить маршрутизацию трафика на основе различных правил.

## Установка

Установка состоит из 3 этапов:

1. Скачивание helm-чарта и конфигурационного файла.
2. Заполнение конфигурационного файла.
3. Установка с помощью helm в Kubernetes-кластер.

#### 1. Скачивание helm-чарта и конфигурационного файла

```shell
helm repo add elma365 https://charts.elma365.tech
helm repo update
helm show values elma365/ingress-nginx > values-ingress-nginx.yaml
```

#### 3. Заполнение конфигурационного файла values-ingress-nginx.yaml

#### 4. Установка с помощью helm

```shell
helm upgrade --install ingress-nginx elma365/ingress-nginx -f values-ingress-nginx.yaml -n ingress-nginx --create-namespace \
```

## Удаление

```shell
$ helm uninstall -n ingress-nginx ingress-nginx
```

## Конфигурация

В следующей таблице перечислены настраиваемые параметры и их значения по умолчанию.

| Key | Type | Default | Description |
| controller.admissionWebhooks.namespaceSelector | object | `{}` |  |
| controller.admissionWebhooks.objectSelector | object | `{}` |  |
| controller.admissionWebhooks.patch.enabled | bool | `true` |  |
| controller.admissionWebhooks.patch.image.digest | string | `"sha256:a320a50cc91bd15fd2d6fa6de58bd98c1bd64b9a6f926ce23a600d87043455a3"` |  |
| controller.admissionWebhooks.patch.image.digest | string | `"sha256:e8825994b7a2c7497375a9b945f386506ca6a3eda80b89b74ef2db743f66a5ea"` |  |
| controller.admissionWebhooks.patch.image.image | string | `"ingress-nginx/kube-webhook-certgen"` |  |
| controller.admissionWebhooks.patch.image.pullPolicy | string | `"IfNotPresent"` |  |
| controller.admissionWebhooks.patch.image.registry | string | `"registry.k8s.io"` |  |
| controller.admissionWebhooks.patch.image.tag | string | `"v1.4.3"` |  |
| controller.admissionWebhooks.patch.image.tag | string | `"v1.5.2"` |  |
| controller.admissionWebhooks.patch.labels | object | `{}` | Labels to be added to patch job resources |
| controller.admissionWebhooks.patch.networkPolicy.enabled | bool | `false` | Enable 'networkPolicy' or not |
| controller.admissionWebhooks.patch.nodeSelector."kubernetes.io/os" | string | `"linux"` |  |
| controller.hostname | object | `{}` | Optionally customize the pod hostname. |
| controller.image.allowPrivilegeEscalation | bool | `false` |  |
| controller.image.chroot | bool | `false` |  |
| controller.image.digest | string | `"sha256:d5f8217feeac4887cb1ed21f27c2674e58be06bd8f5184cacea2a69abaf78dce"` |  |
| controller.image.digestChroot | string | `"sha256:21b55a2f0213a18b91612a8c0850167e00a8e34391fd595139a708f9c047e7a8"` |  |
| controller.image.digest | string | `"sha256:a1cbad75b0a7098bf9325132794dddf9eef917e8a7fe246749a4cea7ff6f01eb"` |  |
| controller.image.digestChroot | string | `"sha256:ec9df3eb6b06563a079ee46045da94cbf750f7dbb16fdbcb9e3265b551ed72ad"` |  |
| controller.image.image | string | `"ingress-nginx/controller"` |  |
| controller.image.pullPolicy | string | `"IfNotPresent"` |  |
| controller.image.readOnlyRootFilesystem | bool | `false` |  |
| controller.image.runAsNonRoot | bool | `true` |  |
| controller.image.runAsUser | int | `101` |  |
| controller.image.seccompProfile.type | string | `"RuntimeDefault"` |  |
| controller.image.tag | string | `"v1.11.2"` |  |
| controller.image.tag | string | `"v1.11.5"` |  |
| controller.ingressClass | string | `"nginx"` | For backwards compatibility with ingress.class annotation, use ingressClass. Algorithm is as follows, first ingressClassName is considered, if not present, controller looks for ingress.class annotation |
| controller.ingressClassByName | bool | `false` | Process IngressClass per name (additionally as per spec.controller). |
| controller.ingressClassResource | object | `{"aliases":[],"annotations":{},"controllerValue":"k8s.io/ingress-nginx","default":false,"enabled":true,"name":"nginx","parameters":{}}` | This section refers to the creation of the IngressClass resource. IngressClasses are immutable and cannot be changed after creation. We do not support namespaced IngressClasses, yet, so a ClusterRole and a ClusterRoleBinding is required. |
| controller.livenessProbe.periodSeconds | int | `10` |  |
| controller.livenessProbe.successThreshold | int | `1` |  |
| controller.livenessProbe.timeoutSeconds | int | `1` |  |
| controller.maxmindLicenseKey | string | `""` | Maxmind license key to download GeoLite2 Databases. # https://blog.maxmind.com/2019/12/18/significant-changes-to-accessing-and-using-geolite2-databases |
| controller.maxmindLicenseKey | string | `""` | Maxmind license key to download GeoLite2 Databases. # https://blog.maxmind.com/2019/12/significant-changes-to-accessing-and-using-geolite2-databases/ |
| controller.metrics.enabled | bool | `false` |  |
| controller.metrics.port | int | `10254` |  |
| controller.metrics.portName | string | `"metrics"` |  |
| controller.metrics.service.servicePort | int | `10254` |  |
| controller.metrics.service.type | string | `"ClusterIP"` |  |
| controller.metrics.serviceMonitor.additionalLabels | object | `{}` |  |
| controller.metrics.serviceMonitor.annotations | object | `{}` |  |
| controller.metrics.serviceMonitor.annotations | object | `{}` | Annotations to be added to the ServiceMonitor. |
| controller.metrics.serviceMonitor.enabled | bool | `false` |  |
| controller.metrics.serviceMonitor.metricRelabelings | list | `[]` |  |
| controller.metrics.serviceMonitor.namespace | string | `""` |  |
| defaultBackend.livenessProbe.periodSeconds | int | `10` |  |
| defaultBackend.livenessProbe.successThreshold | int | `1` |  |
| defaultBackend.livenessProbe.timeoutSeconds | int | `5` |  |
| defaultBackend.minAvailable | int | `1` |  |
| defaultBackend.minAvailable | int | `1` | Minimum available pods set in PodDisruptionBudget. |
| defaultBackend.minReadySeconds | int | `0` | `minReadySeconds` to avoid killing pods before we are ready # |
| defaultBackend.name | string | `"defaultbackend"` |  |
| defaultBackend.networkPolicy.enabled | bool | `false` | Enable 'networkPolicy' or not |


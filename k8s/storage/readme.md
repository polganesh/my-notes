
- `storageClassName` and `accessModes` must match  for `PersistentVolume` and `PersistentVolumeClaim`
- `resources.requests.storage` must be less than or equal to one define in `capacity.storage`

```
apiVersion: v1
kind: PersistentVolume
metadata:
  name: my-pv
spec:
  storageClassName: local-storage
  accessModes:
    - ReadWriteOnce
  capacity:
    storage: 5Gi
  hostPath:
    path: "mnt/data"
```

```
apiVersion: v1
kind: PersistentVolumeClaim
metadata:
  name: my-pvc
spec:
  storageClassName: local-storage
  accessModes:
    - ReadWriteOnce
  resources:
    requests:
      storage: 3Gi
```

```
apiVersion: v1
kind: Pod
metadata:
  name: my-pv-pod
spec:
  volumes:
    - name: my-storage
      persistentVolumeClaim:
        claimName: my-pvc
  containers:
    - name: busybox
      image: busybox
      volumeMounts:
        - mountPath: "/mnt/storage"
          name: my-storage
```

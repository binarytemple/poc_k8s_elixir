# poc_k8s_elixir

Kubernetes bootstrap to run a trivial phoenix application for testing/training purposes.

Dirty - no consideration of security, or restart safety

Don't run in production, particularly if production is a nuclear power plant.

Do - send me PR if you'd like to contribute.

## Installing 

Live dangerously! Add something like this to your EC2 user-data : 

```
curl -L https://raw.githubusercontent.com/bryanhuntesl/poc_k8s_elixir/master/user-data | bash
```


## Credits

Part inspired by https://webcloudpower.com/deploy-phoenix-elixir-with-helm-kubernetes

module github.com/projectcalico/vpp-dataplane

go 1.15

require (
	git.fd.io/govpp.git v0.3.6-0.20201002143632-c2456559a661
	github.com/containernetworking/plugins v0.8.5
	github.com/dgryski/go-farm v0.0.0-20191112170834-c2139c5d712b // indirect
	github.com/eapache/queue v1.1.0 // indirect
	github.com/gogo/protobuf v1.3.1
	github.com/golang/protobuf v1.4.2
	github.com/gophercloud/gophercloud v0.6.0 // indirect
	github.com/imdario/mergo v0.3.8 // indirect
	github.com/kelseyhightower/envconfig v1.4.0 // indirect
	github.com/lunixbochs/struc v0.0.0-20200707160740-784aaebc1d40
	github.com/osrg/gobgp v2.0.0+incompatible
	github.com/pkg/errors v0.9.1
	// This is calico v3.17.1 but go modules just doesn't want to hear about it
	// Because of some weird version numbering pedanticness
	github.com/projectcalico/cni-plugin v1.11.1-0.20201209190712-120c7260724a
	github.com/projectcalico/libcalico-go v1.7.2-0.20201119205058-b367043ede58
	github.com/sirupsen/logrus v1.6.0
	github.com/spf13/viper v1.5.0 // indirect
	github.com/vishvananda/netlink v1.0.1-0.20191217171528-ed8931371a80
	github.com/yookoala/realpath v1.0.0
	golang.org/x/net v0.0.0-20200520004742-59133d7f0dd7
	golang.org/x/sys v0.0.0-20200610111108-226ff32320da
	golang.org/x/time v0.0.0-20191024005414-555d28b269f0 // indirect
	google.golang.org/grpc v1.24.0
	gopkg.in/tomb.v2 v2.0.0-20161208151619-d5d1b5820637
	k8s.io/api v0.17.9
	k8s.io/apimachinery v0.17.9
	k8s.io/client-go v0.17.9
)

replace github.com/osrg/gobgp v2.0.0+incompatible => github.com/osrg/gobgp v0.0.0-20191101114856-a42a1a5f6bf0

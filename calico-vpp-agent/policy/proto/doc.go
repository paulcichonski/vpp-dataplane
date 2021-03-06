//go:generate protoc -I=. --gogo_out=plugins=grpc:. ./felixbackend.proto

package proto

// The proto package defines a simple interface between the CNI plugin
// and a "dataplane driver", which can be used to interface the Calico
// CNI plugin with a custom dataplane, much like felix's dtaplane
// abstraction allows to use Calico's policy engine with a non-kernel
// dataplane

// Use go generate to regenerate the go file.

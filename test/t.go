package main

import (
	"fmt"
	"log"

	"gopkg.in/yaml.v2"
)

// T struct fields must be public in order for unmarshal to
type T struct {
	Version  string
	Kind     string
	Metadata struct {
		Name string
	}
	Spec struct {
		Cluster []struct {
			Name  string
			Alias string
			Url   string
			Hosts struct {
				Host []struct {
					Name string
					Mac  string
				}
			}
		}
	}
}

var data = `
apiVersion: v1
kind: Clusterns
metada:
  name: personal-clusterns
spec:
  cluster:
    name: ocp_v3.01_01
    alias: ichi
    url: local.nutius.com
    hosts:
      host:
        name: ichi-workstation
        mac: 52:54:00:ab:01:30
      host:
        name: ichi-ichi-master
        mac: 52:54:00:ab:01:31
      host:
        name: ichi-ichi-infra-node
        mac: 52:54:00:ab:01:32
      host:
        name: ichi-ichi-node
        mac: 52:54:00:ab:01:33

  cluster:
    name: ocp_v3.05_01
    alias: go
    url: local.nutius.com
    hosts:
      host:
        name: go-workstation
        mac: 52:54:00:ab:05:10
      host:
        name: go-ichi-master
        mac: 52:54:00:ab:05:11
      host:
        name: go-ichi-infra-node
        mac: 52:54:00:ab:05:12
      host:
        name: go-ichi-node
        mac: 52:54:00:ab:05:13

  cluster:
    name: ocp_v3.06_01
    alias: roku
    url: local.nutius.com
    hosts:
      host:
        name: roku-workstation
        mac: 52:54:00:ab:06:10
      host:
        name: roku-ichi-master
        mac: 52:54:00:ab:06:11
      host:
        name: roku-ichi-infra-node
        mac: 52:54:00:ab:06:12
      host:
        name: roku-ichi-node
        mac: 52:54:00:ab:06:13

  cluster:
    name: ocp_v3.07_01
    alias: shichi
    url: local.nutius.com
    hosts:
      host:
        name: shichi-workstation
        mac: 52:54:00:ab:07:10
      host:
        name: shichi-ichi-master
        mac: 52:54:00:ab:07:11
      host:
        name: shichi-ichi-master
        mac: 52:54:00:ab:07:11
      host:
        name: shichi-ichi-infra-node
        mac: 52:54:00:ab:07:13

  cluster:
    name: ocp_v3.09_01
    alias: kyuu
    url: local.nutius.com
    hosts:
      host:
        name: kyuu-workstation
        mac: 52:54:00:ab:11:40
      host:
        name: kyuu-ichi-master
        mac: 52:54:00:ab:11:41
      host:
        name: kyuu-ichi-node
        mac: 52:54:00:ab:11:42

  cluster:
    name: ocp_v3.09_02
    alias: kyuuni
    url: local.nutius.com
    hosts:
      host:
        name: kyuuni-workstation
        mac: 52:54:00:ab:11:50
      host:
        name: kyuuni-ichi-master
        mac: 52:54:00:ab:11:51
      host:
        name: kyuuni-ichi-node
        mac: 52:54:00:ab:11:52

  cluster:
    name: ocp_v3.09_03
    alias: kyuusan
    url: local.nutius.com
    hosts:
      host:
        name: kyuusan-workstation
        mac: 52:54:00:ab:11:60
      host:
        name: kyuusan-ichi-master
        mac: 52:54:00:ab:11:61
      host:
        name: kyuusan-ichi-node
        mac: 52:54:00:ab:11:62

  cluster:
    name: ocp_v3.09_04
    alias: kyuuroku
    url: local.nutius.com
    hosts:
      host:
        name: kyuuroku-workstation
        mac: 52:54:00:ab:09:40
      host:
        name: kyuuroku-ichi-master
        mac: 52:54:00:ab:09:41
      host:
        name: kyuuroku-ichi-node
        mac: 52:54:00:ab:09:42
      host:
        name: kyuuroku-ni-node
        mac: 52:54:00:ab:09:43
      host:
        name: kyuuroku-ichi-infra-node
        mac: 52:54:00:ab:09:44
      host:
        name: kyuuroku-ni-infra-node
        mac: 52:54:00:ab:09:45
      host:
        name: kyuuroku-san-infra-node
        mac: 52:54:00:ab:09:46

  cluster:
    name: ocp_v3.10_01
    alias: ju
    url: local.nutius.com
    hosts:
      host:
        name: ju-workstation
        mac: 52:54:00:ab:10:10;192.168.122.64
      host:
        name: ju-ichi-master
        mac: 52:54:00:ab:10:11;192.168.122.65
      host:
        name: ju-ichi-node
        mac: 52:54:00:ab:10:12;192.168.122.66
      host:
        name: ju-ni-node
        mac: 52:54:00:ab:10:13;192.168.122.67
      host:
        name: ju-ichi-infra-node
        mac: 52:54:00:ab:10:14;192.168.122.68
      host:
        name: ju-ni-infra-node
        mac: 52:54:00:ab:10:15;192.168.122.69

  cluster:
    name: ocp_v3.11_01
    alias: juichi
    url: local.nutius.com
    hosts:
      host:
        name: juichi-workstation
        mac: 52:54:00:ab:11:70
      host:
        name: juichi-ichi-master
        mac: 52:54:00:ab:11:71
      host:
        name: juichi-ichi-node
        mac: 52:54:00:ab:11:72
      host:
        name: juichi-ni-node
        mac: 52:54:00:ab:11:73
      host:
        name: juichi-ichi-infra-node
        mac: 52:54:00:ab:11:74
      host:
        name: juichi-ni-infra-node
        mac: 52:54:00:ab:11:75

  cluster:
    name: ocp_v3.11_02
    alias: che
    url: local.nutius.com
    hosts:
      host:
        name: che-workstation
        mac: 52:54:00:ab:11:90
      host:
        name: che-ichi-master
        mac: 52:54:00:ab:11:91
      host:
        name: che-ichi-node
        mac: 52:54:00:ab:11:92
      host:
        name: che-ichi-infra-node
        mac: 52:54:00:ab:11:93

  cluster:
    name: ocp_v3.11_03
    alias: juichisan
    url: local.nutius.com
    hosts:
      host:
        name: juichisan-workstation
        mac: 52:54:00:ab:11:d0
      host:
        name: juichisan-ichi-master
        mac: 52:54:00:ab:11:d1
      host:
        name: juichisan-ichi-node
        mac: 52:54:00:ab:11:d2
      host:
        name: juichisan-ni-node
        mac: 52:54:00:ab:11:d3
      host:
        name: juichisan-ichi-infra-node
        mac: 52:54:00:ab:11:d4
      host:
        name: juichisan-ni-infra-node
        mac: 52:54:00:ab:11:d5
      host:
        name: juichisan-san-infra-node
        mac: 52:54:00:ab:11:d6

  cluster:
    name: ocp_v3.11_04
    alias: juichiroku
    url: local.nutius.com
    hosts:
      host:
        name: juichiroku-workstation
        mac: 52:54:00:03:11:40
      host:
        name: juichiroku-ichi-master
        mac: 52:54:00:03:11:41
      host:
        name: juichiroku-ni-master
        mac: 52:54:00:03:11:42
      host:
        name: juichiroku-san-master
        mac: 52:54:00:03:11:43
      host:
        name: juichiroku-ichi-node
        mac: 52:54:00:03:11:44
      host:
        name: juichiroku-ni-node
        mac: 52:54:00:03:11:45
      host:
        name: juichiroku-ichi-infra-node
        mac: 52:54:00:03:11:46
      host:
        name: juichiroku-ni-infra-node
        mac: 52:54:00:03:11:47

  cluster:
    name: gluster
    aliasgluster:
    url: local.nutius.com
    hosts:
      host:
        name: gluster-a
        mac: 52:54:00:ab:11:a1
      host:
        name: gluster-b
        mac: 52:54:00:ab:11:a2
      host:
        name: gluster-c
        mac: 52:54:00:ab:11:a3

  cluster:
    name: elasticsearch
    alias: elasticsearch
    url: local.nutius.com
    hosts:
      host:
        name: elasticsearch-a
        mac: 52:54:00:ab:11:b1
      host:
        name: elasticsearch-b
        mac: 52:54:00:ab:11:b2
      host:
        name: elasticsearch-c
        mac: 52:54:00:ab:11:b3
      host:
        name: elasticsearch-d
        mac: 52:54:00:ab:11:b4
      host:
        name: elasticsearch-e
        mac: 52:54:00:ab:11:b5
`

func main() {
	t := T{}

	err := yaml.Unmarshal([]byte(data), &t)
	if err != nil {
		log.Fatalf("error: %v", err)
	}
	fmt.Printf("--- t:\n%v\n\n", t)

	d, err := yaml.Marshal(&t)
	if err != nil {
		log.Fatalf("error: %v", err)
	}
	fmt.Printf("--- t dump:\n%s\n\n", string(d))

	m := make(map[interface{}]interface{})

	err = yaml.Unmarshal([]byte(data), &m)
	if err != nil {
		log.Fatalf("error: %v", err)
	}
	fmt.Printf("--- m:\n%v\n\n", m)

	d, err = yaml.Marshal(&m)
	if err != nil {
		log.Fatalf("error: %v", err)
	}
	fmt.Printf("--- m dump:\n%s\n\n", string(d))
}

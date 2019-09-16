package cluster

type node struct {
	hostname string
	fqdn     string
	mac      string
	ip       string
}

type cluster struct {
	name  string
	alias string
	nodes []node
}

var clusterns []cluster

func Init() {
	clusterns = []cluster{
		cluster{
			name:  "ocp_v3.11_03",
			alias: "jusan",
			nodes: []node{
				node{
					hostname: "jusan-workstation",
					fqdn: "jusan-workstation.example.com",
					mac: "52:54:00:ab:11:d0",
					ip: "192.168.122.120",
				},
				node{
					hostname: "",
					fqdn: "jusan-ichi-master.example.com",
					mac: "52:54:00:ab:11:d1",
					ip: "192.168.122.121",
				},
				node{
					hostname: "",
					fqdn: "jusan-ichi-node.example.com",
					mac: "52:54:00:ab:11:d2",
					ip: "192.168.122.122",
				},
				node{
					hostname: "",
					fqdn: "jusan-ni-node.example.com",
					mac: "52:54:00:ab:11:d3",
					ip: "192.168.122.123",
				},
				node{
					hostname: "",
					fqdn: "jusan-ichi-infra-node.example.com",
					mac: "52:54:00:ab:11:d4",
					ip: "192.168.122.124",
				},
				node{
					hostname: "",
					fqdn: "jusan-ni-infra-node.example.com",
					mac: "52:54:00:ab:11:d5",
					ip: "192.168.122.125",
				},
				node{
					hostname: "",
					fqdn: "jusan-ni-infra-node.example.com",
					mac: "52:54:00:ab:11:d6",
					ip: "192.168.122.126",
				},
			},
		},
	}
}

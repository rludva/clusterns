package cluster

import (
	"testing"
)

func TestClustersInicialization(t *testing.T) {
	Init()
	if len(clusterns) == 0 {
		t.Errorf("Clusterns are not inicialized..")
	}
	if len(clusterns[0].nodes) == 0 {
		t.Errorf("Nodes of clusterns are not inicialized..")
	}
}

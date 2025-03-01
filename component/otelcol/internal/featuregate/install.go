// Package featuregate automatically enables upstream feature gates that
// otelcol components require. The package must be imported for the feature
// gates to be enabled.
package featuregate

import (
	"go.opentelemetry.io/collector/featuregate"

	_ "go.opentelemetry.io/collector/obsreport" // telemetry.useOtelForInternalMetrics
)

// TODO(rfratto): this package should be updated occasionally to remove feature
// gates which no longer exist.
//
// Once all feature gates are removed, this package can be removed as well.

func init() {
	_ = enableFeatureGates(featuregate.GetRegistry())
}

func enableFeatureGates(reg *featuregate.Registry) error {
	return reg.Apply(map[string]bool{
		"telemetry.useOtelForInternalMetrics": true,
	})
}

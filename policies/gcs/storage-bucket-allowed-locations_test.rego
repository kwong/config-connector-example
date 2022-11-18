package storagebucketallowedlocations

input_storage_bucket_missing_location = {
    "parameters": {"locations": [
		"ASIA",
		"EU",
		"US",
		"ASIA1",
		"EUR4",
		"NAM4",
	]},
	"review": {
		"object": {"spec": {"lifecycleRule": [{
			"action": {"type": "Delete"},
			"condition": {"age": 7},
		}]}},
	},
}

test_storage_bucket_missing_location {
	input := input_storage_bucket_missing_location
	results := violation with input as input
	count(results) == 1
}
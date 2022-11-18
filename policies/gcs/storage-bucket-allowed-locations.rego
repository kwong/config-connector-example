package storagebucketallowedlocations

violation[{"msg": msg, "details": {"location": ""}}] {
    not input.review.object.spec.location
    msg := "location is missing"
}


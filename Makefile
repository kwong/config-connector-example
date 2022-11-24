.PHONY: test 
test:
	docker run --platform linux/amd64 -v ${PWD}:/data openpolicyagent/gator:v3.10.0 verify /data/$(target) -v


.PHONY: verify-gator
verify-gator: 
	docker run -i -v ${PWD}:/data openpolicyagent/gator:v3.10.0 verify /data/... -v

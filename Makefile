OTG_API := https://clab-campus-fabric-ixia-voice:8443
.DEFAULT_GOAL = start

.PHONY: start
start: 
	sudo containerlab deploy

.PHONY: stop
stop: save
	sudo containerlab destroy --graceful --keep-mgmt-net

.PHONY: clean
clean:
	-sudo containerlab destroy --cleanup --keep-mgmt-net
	rm -f .*.clab.yml* avd/ansible.log
	sudo rm -rf clab-*

.PHONY: save
save:
	sudo containerlab save

.PHONY: build
build:
	cd avd && ansible-playbook build.yml

.PHONY: deploy
deploy:
	cd avd && ansible-playbook deploy.yml

.PHONY: flows
flows:
	otgen run --file otg.yml --yaml -k --metrics flow --api ${OTG_API} --log debug  --timeout 20m | \
	otgen transform --metrics flow  --counters frames | \
	otgen display --mode table

.PHONY: ping-IDF1-IDF2
ping-IDF1-IDF2:
	ssh clab-campus-fabric-idf1-laptop ping -i 0.5 10.2.10.10
SBT=sbt

.PHONY: spark
spark: spark-2.0.2 spark-2.1.2 spark-2.2.0

.PHONY: spark-%
spark-%:
	$(SBT) -DsparkVersion=$* docker

test: test-2.0.2 test-2.1.2

test-%:
	$(SBT) -DsparkVersion=$* test

clean:
	$(SBT) clean

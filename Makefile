MAKEFLAGS += --warn-undefined-variables

# Copyright 2020 The amongus discord chart - Lucca Pessoa da Silva Matos
#
#
#    Licensed under the Apache License, Version 2.0 (the "License");
#    you may not use this file except in compliance with the License.
#    You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
#    Unless required by applicable law or agreed to in writing, software
#    distributed under the License is distributed on an "AS IS" BASIS,
#    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#    See the License for the specific language governing permissions and
#    limitations under the License.

NAME 			:= amongus-discord
NAMESPACE := amongus-discord
CHART     := $(CURDIR)/charts/amongus-discord

#################################################
# Helm shortcuts
#################################################

.PHONY: lint
lint:
	@echo "==> Helm Lint..."
	helm lint $(CHART)
	@echo ""

.PHONY: install
install:
	@echo "==> Helm Install..."
	helm install $(NAME) $(CHART) -n $(NAMESPACE)
	@echo ""

.PHONY: upgrade
upgrade:
	@echo "==> Helm Upgrade..."
	helm upgrade --install $(NAME) $(CHART) -n $(NAMESPACE)
	@echo ""

.PHONY: delete
delete:
	@echo "==> Helm Delete..."
	helm delete $(NAME) -n $(NAMESPACE)
	@echo ""

.PHONY: clean
clean: 
	@echo "==> Clean Repo Directory..."
	rm -rf $(CURDIR)/repo/*
	@echo ""

.PHONY: package
package:
	@echo "==> Helm Package Amongus Discrod..."
	helm package $(CHART) -u -d $(CURDIR)/repo
	@echo ""
	
.PHONY: release
release: lint clean package

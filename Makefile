AWS_PROFILE := tl

clean:
	rm -rf backend/.terraform
	rm -rf infra/.terraform
	rm -rf eks/.terraform
	rm -rf flux_helm_automation/.terraform

init_backend:
	terraform -chdir=backend init

init_infra:
	terraform -chdir=infra init

init_eks:
	terraform -chdir=eks init

init_flux:
	terraform -chdir=flux_helm_automation init

plan_backend:
	terraform -chdir=backend plan

plan_infra:
	terraform -chdir=infra plan

plan_eks:
	terraform -chdir=eks plan

plan_flux:
	terraform -chdir=flux_helm_automation plan

apply_backend:
	terraform -chdir=backend apply

apply_infra:
	terraform -chdir=infra apply

apply_eks:
	terraform -chdir=eks apply

apply_flux:
	terraform -chdir=flux_helm_automation apply

all:
	make clean
	make init_backend
	make apply_backend
	make init_infra
	make apply_infra
	make init_eks
	make apply_eks
	make init_flux
	make apply_flux


auto_apply_backend:
	terraform -chdir=backend apply -auto-approve

auto_apply_infra:
	terraform -chdir=infra apply -auto-approve

auto_apply_eks:
	terraform -chdir=eks apply -auto-approve

auto_apply_flux:
	terraform -chdir=flux_helm_automation apply -auto-approve

auto_all:
	make clean
	make init_backend
	make auto_apply_backend
	make init_infra
	make auto_apply_infra
	make init_eks
	make auto_apply_eks
	make init_flux
	make auto_apply_flux

destroy_backend:
	terraform -chdir=backend destroy

destroy_infra:
	terraform -chdir=infra destroy

destroy_eks:
	terraform -chdir=eks destroy

destroy_flux:
	terraform -chdir=flux_helm_automation destroy

destroy_all:
	make destroy_flux
	make destroy_eks
	make destroy_infra
	make destroy_backend

auto_destroy_backend:
	terraform -chdir=backend destroy -auto-approve

auto_destroy_infra:
	terraform -chdir=infra destroy -auto-approve

auto_destroy_eks:
	terraform -chdir=eks destroy -auto-approve

auto_destroy_flux:
	terraform -chdir=flux_helm_automation destroy -auto-approve

auto_destroy_all:
	make auto_destroy_flux
	make auto_destroy_eks
	make auto_destroy_infra
	make auto_destroy_backend

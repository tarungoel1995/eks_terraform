locals {

    sub_ids = distinct(flatten([
    for s in data.terraform_remote_state.infra.outputs.subnets : values(s)
    ]))

}
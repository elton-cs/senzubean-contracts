use starknet::ContractAddress;

#[derive(Copy, Drop, Serde)]
#[dojo::model]
struct PendingActionHash {
    #[key]
    entityID: ContractAddress,
    hash: felt252,
}

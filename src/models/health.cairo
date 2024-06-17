use starknet::ContractAddress;

#[derive(Copy, Drop, Serde)]
#[dojo::model]
struct Health {
    #[key]
    entityID: ContractAddress,
    health: u8,
}

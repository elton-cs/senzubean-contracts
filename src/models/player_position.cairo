use starknet::ContractAddress;
use dojo_starter::utils::common::Vec2D;

#[derive(Copy, Drop, Serde)]
#[dojo::model]
struct PlayerPosition {
    #[key]
    entityID: ContractAddress,
    position: Vec2D,
}

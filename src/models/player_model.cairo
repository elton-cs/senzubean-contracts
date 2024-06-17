use starknet::ContractAddress;
use dojo_starter::utils::common::Vec2D;

#[derive(Copy, Drop, Serde)]
#[dojo::model]
struct Player {
    #[key]
    playerID: ContractAddress,
    health: u8,
    unit_position: Vec2D,
    attack_position: Vec2D,
    pending_actions_hash: felt252,
}

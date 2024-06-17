use starknet::ContractAddress;
use dojo_starter::utils::common::Vec2D;

#[derive(Copy, Drop, Serde)]
#[dojo::model]
struct Player {
    #[key]
    playerID: ContractAddress,
    character: PlayableCharacter,
}

#[derive(Copy, Drop, Serde, Introspect)]
enum PlayableCharacter {
    Gohan,
    Cell,
}

#[derive(Copy, Drop, Serde)]
#[dojo::model]
struct Health {
    #[key]
    playerID: ContractAddress,
    health: u8,
}

#[derive(Copy, Drop, Serde)]
#[dojo::model]
struct Position {
    #[key]
    playerID: ContractAddress,
    x: u32,
    y: u32,
}

#[derive(Copy, Drop, Serde)]
#[dojo::model]
struct KiBlast {
    #[key]
    playerID: ContractAddress,
    x: u32,
    y: u32,
}

#[derive(Copy, Drop, Serde)]
#[dojo::model]
struct PendingActionsHash {
    #[key]
    playerID: ContractAddress,
    hash: felt252,
}

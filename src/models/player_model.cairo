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
    position: Vec2D,
}

#[derive(Copy, Drop, Serde)]
#[dojo::model]
struct KiBlast {
    #[key]
    playerID: ContractAddress,
    position: Vec2D,
}

#[derive(Copy, Drop, Serde)]
#[dojo::model]
struct PendingActionsHash {
    #[key]
    playerID: ContractAddress,
    hash: felt252,
}

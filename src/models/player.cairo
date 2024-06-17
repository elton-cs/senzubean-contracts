use starknet::ContractAddress;
use dojo_starter::utils::common::Vec2D;

#[derive(Copy, Drop, Serde, Introspect)]
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

impl PlayableCharacterIntoU8 of Into<PlayableCharacter, u8> {
    fn into(self: PlayableCharacter) -> u8 {
        match self {
            PlayableCharacter::Gohan => 0,
            PlayableCharacter::Cell => 1,
        }
    }
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
    point: Vec2D,
}

#[derive(Copy, Drop, Serde)]
#[dojo::model]
struct KiBlast {
    #[key]
    playerID: ContractAddress,
    point: Vec2D,
}

#[derive(Copy, Drop, Serde)]
#[dojo::model]
struct PendingActionsHash {
    #[key]
    playerID: ContractAddress,
    hash: felt252,
}

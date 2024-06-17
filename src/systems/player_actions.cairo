use dojo_starter::models::player::{PlayableCharacter};
use dojo_starter::models::game::{Game};

#[dojo::interface]
trait IPlayerActions {
    fn spawn_player(ref world: IWorldDispatcher);
}

#[dojo::contract]
mod player_actions {
    use super::{IPlayerActions};
    use dojo_starter::models::{
        player::{Player, PlayableCharacter, Health, Position, KiBlast, PendingActionsHash},
        game::{Game}
    };
    use dojo_starter::utils::common::Vec2D;
    use starknet::{ContractAddress, get_caller_address};
    use dojo_starter::utils::constants::{GAME_ID};


    #[abi(embed_v0)]
    impl PlayerActionsImpl of IPlayerActions<ContractState> {
        fn spawn_player(ref world: IWorldDispatcher) {
            let playerID = get_caller_address();
            let character = PlayableCharacter::Gohan;
            let health: u8 = 3;
            let player_position = Vec2D { x: 0, y: 0 };
            let kiblast_position = Vec2D { x: 0, y: 0 };
            let hash: felt252 = 0;

            let player = Player { playerID, character, };
            let health = Health { playerID, health };
            let position = Position { playerID, point: player_position };
            let kiblast = KiBlast { playerID, point: kiblast_position };
            let pending_actions_hash = PendingActionsHash { playerID, hash };

            set!(world, (player, health, position, kiblast, pending_actions_hash))
        }
    }

    fn decide_character(ref world: IWorldDispatcher) -> PlayableCharacter {
        get!(world, GAME_ID, (Game));
        PlayableCharacter::Gohan
    }
}


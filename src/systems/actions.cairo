#[dojo::interface]
trait IActions {
    fn spawn(ref world: IWorldDispatcher);
}

#[dojo::contract]
mod actions {
    use super::{IActions};
    use dojo_starter::models::{player_position::PlayerPosition, health::Health};
    use dojo_starter::utils::common::{Vec2D};
    use starknet::{ContractAddress, get_caller_address};

    #[abi(embed_v0)]
    impl ActionsImpl of IActions<ContractState> {
        fn spawn(ref world: IWorldDispatcher) {
            let player = get_caller_address();
            let position = Vec2D { x: 0, y: 0 };
            let health = 3;

            set!(
                world,
                (
                    PlayerPosition { entityID: player, position },
                    Health { entityID: player, health: health }
                )
            );
        }
    }
}

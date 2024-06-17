#[dojo::interface]
trait IGameActions {
    fn spawn_arena(ref world: IWorldDispatcher, x: u32, y: u32);
    fn spawn_senzubean(ref world: IWorldDispatcher, x: u32, y: u32);
}


#[dojo::contract]
mod game_actions {
    use super::{IGameActions};
    use dojo_starter::models::{arena::Arena, senzubean::Senzubean};
    use dojo_starter::utils::common::Vec2D;
    use dojo_starter::utils::constants::{ARENA_MODEL_ID, SENZUBEAN_MODEL_ID};


    #[abi(embed_v0)]
    impl GameActionsImpl of IGameActions<ContractState> {
        fn spawn_empty_game(ref world: IWorldDispatcher) {
            let empty_player = Player {
                playerID:  
            };
            let game = Game { itemID: GAME_ID, score: 0, is_game_over: false, };
            set!(world,)
        }

        fn spawn_arena(ref world: IWorldDispatcher, x: u32, y: u32) {
            let arena = Arena {
                itemID: ARENA_MODEL_ID,
                staring_bound: Vec2D { x: 0, y: 0 },
                ending_bound: Vec2D { x, y },
            };
            set!(world, (arena));
        }
        fn spawn_senzubean(ref world: IWorldDispatcher, x: u32, y: u32) {
            let senzubean = Senzubean {
                itemID: SENZUBEAN_MODEL_ID, point: Vec2D { x, y }, is_eaten: false,
            };

            set!(world, (senzubean));
        }
    }
}

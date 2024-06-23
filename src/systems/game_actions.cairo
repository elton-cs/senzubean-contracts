#[dojo::interface]
trait IGameActions {
    fn spawn_arena(ref world: IWorldDispatcher, x: u32, y: u32);
    fn spawn_senzubean(ref world: IWorldDispatcher);
}


#[dojo::contract]
mod game_actions {
    use super::{IGameActions};
    use dojo_starter::models::{arena::Arena, senzubean::Senzubean};
    use dojo_starter::utils::common::Vec2D;
    use dojo_starter::utils::constants::{ARENA_MODEL_ID, SENZUBEAN_MODEL_ID};

    #[abi(embed_v0)]
    impl GameActionsImpl of IGameActions<ContractState> {
        fn spawn_arena(ref world: IWorldDispatcher, x: u32, y: u32) {
            let arena = Arena {
                itemID: ARENA_MODEL_ID,
                staring_bound: Vec2D { x: 0, y: 0 },
                ending_bound: Vec2D { x, y },
            };
            set!(world, (arena));
        }

        fn spawn_senzubean(ref world: IWorldDispatcher) {
            let arena = get!(world, (ARENA_MODEL_ID), (Arena));
            let x = (arena.ending_bound.x + 1) / 2;
            let y = (arena.ending_bound.y + 1) / 2;

            let senzubean = Senzubean {
                itemID: SENZUBEAN_MODEL_ID, point: Vec2D { x, y }, is_eaten: false,
            };

            set!(world, (senzubean));
        }
    }
}

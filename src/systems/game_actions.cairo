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

    const ARENA_MODEL_ID: u8 = 0;
    const SENZUBEAN_MODEL_ID: u8 = 1;

    #[abi(embed_v0)]
    impl ActionsImpl of IGameActions<ContractState> {
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

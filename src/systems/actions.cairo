#[dojo::interface]
trait IActions {// fn spawn_player(ref world: IWorldDispatcher);
}

#[dojo::contract]
mod actions { // use super::{IActions};
// use dojo_starter::models::{senzubean_model::SenzuBean, arena_model::Arena};
// use dojo_starter::utils::common::{Vec2D};
// use starknet::{ContractAddress, get_caller_address};

// #[abi(embed_v0)]
// impl ActionsImpl of IActions<ContractState> {
//     fn spawn_player(ref world: IWorldDispatcher) { // let playerID = get_caller_address();
//     // let health = 3;
//     // let unit_position = Vec2D { x: 0, y: 0 };
//     // let attack_position = Vec2D { x: 0, y: 0 };
//     // let pending_actions_hash: felt252 = 0;
//     // set!(
//     //     world,
//     //     (Player { playerID, health, unit_position, attack_position, pending_actions_hash },)
//     // );
//     }
// }
}

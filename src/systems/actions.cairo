#[dojo::interface]
trait IActions {
    fn spawn(ref world: IWorldDispatcher);
}

#[dojo::contract]
mod actions {
    use super::{IActions};
    use dojo_starter::models::{position::Position, health::Health};
    use starknet::{ContractAddress, get_caller_address};

    #[abi(embed_v0)]
    impl ActionsImpl of IActions<ContractState> {
        fn spawn(ref world: IWorldDispatcher) {
            let player = get_caller_address();
        }
    }
}

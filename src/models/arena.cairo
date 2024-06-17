use starknet::ContractAddress;
use dojo_starter::utils::common::Vec2D;

#[derive(Copy, Drop, Serde)]
#[dojo::model]
struct Arena {
    #[key]
    itemID: u8,
    staring_bound: Vec2D,
    ending_bound: Vec2D,
}

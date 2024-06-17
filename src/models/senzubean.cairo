use starknet::ContractAddress;
use dojo_starter::utils::common::Vec2D;

#[derive(Copy, Drop, Serde)]
#[dojo::model]
struct Senzubean {
    #[key]
    itemID: u8,
    point: Vec2D,
    is_eaten: bool,
}

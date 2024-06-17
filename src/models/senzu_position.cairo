use starknet::ContractAddress;
use dojo_starter::utils::common::Vec2D;

#[derive(Copy, Drop, Serde)]
#[dojo::model]
struct SenzuBeanPosition {
    #[key]
    itemID: u8,
    position: Vec2D,
}

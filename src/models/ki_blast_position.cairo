use starknet::ContractAddress;
use dojo_starter::utils::common::Vec2D;

#[derive(Copy, Drop, Serde)]
#[dojo::model]
struct KiBlastPosition {
    #[key]
    entityID: ContractAddress,
    position: Vec2D,
}

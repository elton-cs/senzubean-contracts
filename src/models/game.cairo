use dojo_starter::models::player::Player;

#[derive(Copy, Drop, Serde)]
#[dojo::model]
struct Game {
    #[key]
    game_id: u32,
// room_status: RoomStatus,
// p1: Player,
// p2: Player,
}
// #[derive(Copy, Drop, Serde, Introspect)]
// enum RoomStatus {
//     Empty,
//     Waiting,
//     Playing,
// }

// impl RoomStatusIntoU8 of Into<RoomStatus, u8> {
//     fn into(self: RoomStatus) -> u8 {
//         match self {
//             RoomStatus::Empty => 0,
//             RoomStatus::Waiting => 1,
//             RoomStatus::Playing => 2,
//         }
//     }
// }


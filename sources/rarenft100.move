module rarenft100::rarenft100 {

    use sui::object::UID;
    use sui::tx_context::TxContext;
    use sui::transfer;
    use sui::url;
    use std::string;

    /// NFT Raro
    public struct RareNFT has key, store {
        id: UID,
        name: string::String,
        description: string::String,
        image_url: url::Url,
        rarity_level: u8
    }

    /// Função de mint do NFT raro
    public fun mint(
        name: vector<u8>,
        description: vector<u8>,
        image_url: vector<u8>,
        rarity_level: u8,
        ctx: &mut TxContext
    ) {
        let nft = RareNFT {
            id: sui::object::new(ctx),
            name: string::utf8(name),
            description: string::utf8(description),
            image_url: url::new_unsafe_from_bytes(image_url),
            rarity_level
        };

        transfer::transfer(nft, sui::tx_context::sender(ctx));
    }
}




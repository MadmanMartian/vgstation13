#define CS_MODE_EXPORT 1
#define CS_MODE_PRICETAG 2
#define CS_MODE_DESTTAG 3

/**
	Cargo Scanner
	Got tired of having nothing to do as a Cargo Technician after ordering the yellaglubs, so figured I'd make some content

	- Export Mode
	Lets you scan items to see if they have any intrinsic value to central command should you throw them on the supply shuttle (See objs.dm for value, supply_shuttle.dm for export function)
	Also lets you know if said item is part of an active bounty

	- Pricetag Mode
	Absorbs the old Price Tagger functionality, letting you set a price to... load it into a vending machine (See vending.dm loadCustomItem() )

	- Destination Tagger Mode
	The QMs best friend, lets you slap a wrapped package and set its destination

**/

/obj/item/device/cargo_scanner
	name = "cargo scanner"
	desc = "The Cargo Tech's best friend. Can scan items to see their commercial value"
	var/scan_mode = CS_MODE_EXPORT

#undef CS_MODE_EXPORT
#undef CS_MODE_PRICETAG
#undef CS_MODE_DESTTAG
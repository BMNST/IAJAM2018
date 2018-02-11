local a = core.filter.add
a("render", { "position.x", "position.y", "drawReference" })
a("square", { "position.x", "position.y", "color.R", "color.G", "color.B" })
a("green", { "green" })
a("cyan", { "cyan" })
a("ember", { "ember" })
a("yellow", { "yellow" })
a("purple", { "purple" })
a("unwalkable", { "position.x", "position.y", "unwalkable" })
a("player", { "position.x", "position.y", "player" })
a("endNode", { "position.x", "position.y", "endNode" })
a("tiles", { "position.x", "position.y", "tileColor" })
a("tileToImage", { "position.x", "position.y", "tileSpriteName" })


a("turret", { "isTurret", "position.x", "position.y", "orientation" })

a("persistent", { "persistent" })
a("nonPersistent", { "-persistent" })

a("behaves", { "behavior" })
a("moveAction", { "behavior.actions.move" })
a("rotationAction", { "behavior.actions.rotate" })
a("toggleDoorAction", { "behavior.actions.toggleDoor" })


a("trapdoor", { "trapdoor" })
a("movingBlock", { "movingBlock" })
const fs = require('fs')
const path = require('path')
const parser = require('fast-xml-parser')

const dataDir = path.join(__dirname, '../data')
const npcDir = path.join(dataDir, 'npc')

const shopSellables = fs.readdirSync(npcDir).map(npcFileName => {
	try {
		const fileContent = fs.readFileSync(path.join(npcDir, npcFileName), 'utf-8')

		const npcData = parser.parse(fileContent, {
			ignoreAttributes: false
		})

		const shopSellable = [(npcData.npc.parameters?.parameter ?? [])].flat().find(param => param['@_key'] === 'shop_sellable')

		if (shopSellable) {
			return shopSellable['@_value']
		}

		return ''
	} catch (e) {
		return ''
	}
}).filter(Boolean)

const items = shopSellables.flatMap(itemsText =>  {
	return itemsText.split(';').map(itemText => {
		const [name, id, price] = itemText.split(',').map(value => value.trim())

		return { name, id, price: Number(price) }
	})
})

const itemById = {}

for (const item of items) {
	if (!item.id) continue
	itemById[item.id] = itemById[item.id] || []
	itemById[item.id].push(item)
}

// trader low <= 1000
// trader high > 1000
const itemsBetterPrice = Object.keys(itemById).map(id => {
	const items = itemById[id].sort((itemA, itemB) => itemB.price - itemA.price)
	return items[0]
}).filter(item => item.price <= 1000)

itemsBetterPrice.sort((itemA, itemB) => itemA.name.localeCompare(itemB.name))

const shopSellableText = itemsBetterPrice.reduce((shopSellableText, item) => {
	return shopSellableText + `${item.name}, ${item.id}, ${item.price};\n`
}, '')

fs.writeFileSync(path.join(__dirname, 'output/update-npc-trader-xml.txt'), shopSellableText)

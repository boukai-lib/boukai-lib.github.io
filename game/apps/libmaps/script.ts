type MapLocation = {
	id: string
	name: string
    name_s?: string
	description: string
	left: number // percent
	top: number // percent
}

const LOCATIONS: MapLocation[] = [
	{ id: 'l1', name: 'カウンター', description: 'ここで本の貸出・返却ができます。<br>うるさい委員は廊下で(言葉を用いて)殴りましょう。', left: 12, top: 55 },
	{ id: 'l2', name: '新書', description: '回転する本棚があり、新書（のようなもの）が入っています。<br><small>ここにある本を読む人はいるのでしょうか...?</small>', left: 9.2, top: 8.5 },
	{ id: 'l3', name: '大型本/SDGs', description: '大型の絵本や、SDGsに関する資料があります。<br>ただし、借りれるかは別である。', left: 33, top: 8.5 },
	{ id: 'l4', name: '日本文学(単行本)', description: '日本文学のうち、単行本サイズのものがあります。<br>青い鳥文庫みたいな児童向け文庫もここにあったりします。"ワンピース"とか。', left: 65, top: 8.5 },
    { id: 'l5', name: '外<br>国<br>文<br>学<br><br>単<br>行<br>本', name_s:'外国文学(単行本)', description: '"ハリーポッター"とかの外国の文学がここにあります。ディズニーは別。', left: 96.75, top: 50 },
    { id: 'l6', name: '明石', description: '明石に関する本が置いてあります。<br><small>ここにある本を読む人はいるのでしょうか...?</small>', left: 96.75, top: 80 },
	{ id: 'l7', name: '日本文学(文庫)', description: '日本文学のうち、文庫サイズのものが置いてあります。<br>単行本よりも、薄く、軽く、持ちやすいです。' , left: 55, top: 94},
	{ id: 'l8', name: '外国文学(文庫)', description: '外国文学のうち、文庫サイズのものが置いてあります。<br>ディズニーはここ。', left: 33, top: 94 },
]

const map = document.getElementById('map') as HTMLElement
if (!map) throw new Error('map element not found')

let currentPopup: HTMLElement | null = null

function createMarker(loc: MapLocation) {
	const btn = document.createElement('button')
	btn.className = 'marker'
	btn.type = 'button'
	btn.setAttribute('aria-haspopup', 'dialog')
	btn.setAttribute('aria-controls', `popup-${loc.id}`)
	btn.style.left = `${loc.left}%`
	btn.style.top = `${loc.top}%`
	btn.innerHTML = loc.name
	btn.addEventListener('click', (e) => {
		e.stopPropagation()
		showPopup(loc, btn)
	})
	map.appendChild(btn)
}

function showPopup(loc: MapLocation, anchor: HTMLElement) {
	closePopup()
	const popup = document.createElement('div')
	popup.className = 'popup'
	popup.id = `popup-${loc.id}`
	popup.setAttribute('role', 'dialog')
	popup.setAttribute('aria-label', loc.name)

	const close = document.createElement('button')
	close.className = 'close'
	close.type = 'button'
	close.innerHTML = '✕'
	close.addEventListener('click', (ev) => { ev.stopPropagation(); closePopup() })

	const title = document.createElement('h3')
	title.innerHTML = loc.name_s ? loc.name_s : loc.name

	const p = document.createElement('p')
	p.innerHTML = loc.description

	popup.appendChild(close)
	popup.appendChild(title)
	popup.appendChild(p)

	map.appendChild(popup)
	positionPopup(popup, anchor)
	currentPopup = popup
	// focus management
	close.focus()
}

function positionPopup(popup: HTMLElement, anchor: HTMLElement) {
	const mapRect = map.getBoundingClientRect()
	const anchorRect = anchor.getBoundingClientRect()
	const popupRect = popup.getBoundingClientRect()

	// calculate desired position: above the anchor by default
	let left = anchor.offsetLeft - popupRect.width / 2 + anchor.offsetWidth / 2
	let top = anchor.offsetTop - popupRect.height - 12

	// keep within map bounds
	left = Math.max(8, Math.min(left, map.clientWidth - popupRect.width - 8))
	if (top < 8) top = anchor.offsetTop + anchor.offsetHeight + 12

	popup.style.left = `${left}px`
	popup.style.top = `${top}px`
}

function closePopup() {
	if (currentPopup && currentPopup.parentElement) {
		currentPopup.parentElement.removeChild(currentPopup)
		currentPopup = null
	}
}

// build markers from LOCATIONS
LOCATIONS.forEach(createMarker)

// close popup when clicking outside
document.addEventListener('click', () => closePopup())
document.addEventListener('keydown', (e) => { if (e.key === 'Escape') closePopup() })

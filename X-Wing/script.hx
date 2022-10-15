// --- Named constants, settings and flags ---
var CONSTS = {
	DEBUG: false
}

// --- State to set onFirstLaunch, keep and serialize with Save  ---
DATA = {}

// --- BEGIN of BOILERPLATE ---
function saveState() {
	state.scriptProps = {
		DATA: DATA
	}
}

function init() {
	if (!isHost()) return;
	setPause(true);

	if (state.time == 0) {
		onFirstLaunch();
	}
	onEachLaunch();

	setPause(false);
}

function onFirstLaunch() {
	setVictory();
	setZoneMaxBuildings();

	// if you want to use Objectives API do it here, on first launch only
	// setObjectives(); 
}

function onEachLaunch() {}

// Regular update is called every 0.5s
function regularUpdate(dt:Float) {}

function setVictory() {
	if (state.time == 0) {
		// state.removeVictory(VictoryKind.VMilitary);
		state.removeVictory(VictoryKind.VFame);
		state.removeVictory(VictoryKind.VMoney);
		state.removeVictory(VictoryKind.VLore);
		state.removeVictory(VictoryKind.VYggdrasil);
		state.removeVictory(VictoryKind.VOdinSword);
		state.removeVictory(VictoryKind.VHelheim);
		state.removeVictory(VictoryKind.VMealSquirrel);
	}
}

function setZoneMaxBuildings() {
	getZone(13).maxBuildings = 5;
	getZone(15).maxBuildings = 5;
	getZone(27).maxBuildings = 5;
	getZone(16).maxBuildings = 5;
	getZone(26).maxBuildings = 5;
	getZone(20).maxBuildings = 5;
	getZone(135).maxBuildings = 5;
	getZone(148).maxBuildings = 5;
	getZone(163).maxBuildings = 5;
	getZone(146).maxBuildings = 5;
	getZone(159).maxBuildings = 5;
	getZone(153).maxBuildings = 5;
}
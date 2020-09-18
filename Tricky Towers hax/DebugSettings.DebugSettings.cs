using System;

public partial class DebugSettings : SettingsCollection
{
	public DebugSettings()
	{
		this.skipExplanation = true;
		this._currentProfile = "VLATKO"; //changed from RELEASE
		this._SetSetting("ENABLED", false);
		this._SetSetting("_ON_SCREEN_LOGS", false);
		this._SetSetting("AUTO_BUILD_INSTANCES", 4);
		this._SetSetting("_AUTO_BUILD_", 0);
		this._SetSetting("AUTO_BUILD_BRICK_PACKS", null);
		this._SetSetting("FPS_COUNTER", false);
		this._SetSetting("SPELL_SELECTION", null);
		this._SetSetting("INSTANT_SPELL", null);
		this._SetSetting("AUDIO_DISABLED", false);
		this._SetSetting("RACE_HEIGHT", 0);
		this._SetSetting("SHOW_HUD_AT_END", false);
		this._SetSetting("_DEBUG_USERS", false);
		this._SetSetting("ALLOW_LEFT_SESSIONS_REJOIN", true);
		this._SetSetting("FORCED_LOCALE", null);
		this._SetSetting("SKIP_PLUS_CHECK", true);
		this._SetSetting("ALL_TRIALS_UNLOCKED", false);
		this._SetSetting("SHOW_ELO_SCORE", false);
		this._SetSetting("NO_MIN_PLAYERS", true);
		this._SetSetting("SKIP_ELO_SEARCH", true);
		this._SetSetting("ENABLE_AUTO_BUILD", false);
		this._SetSetting("_DLC_UNLOCKED_PC", false);
		this._SetSetting("_DISABLE_LOBBY_TIMEOUT", false);
		this._SetSetting("_DEBUG_CONTROLLERS", false);
		this._SetSetting("ENABLED", false, "RELEASE");
		this._SetSetting("ENABLED", true, "RELEASE_TESTING");
		this._SetSetting("SKIP_PLUS_CHECK", false, "RELEASE_TESTING");
		this._SetSetting("NO_MIN_PLAYERS", false, "RELEASE_TESTING");
		this._SetSetting("_DISABLE_LOBBY_TIMEOUT", true, "RELEASE_TESTING");
		this._SetSetting("ENABLED", true, "TESTING");
		this._SetSetting("FPS_COUNTER", true, "TESTING");
		this._SetSetting("SHOW_HUD_AT_END", true, "TESTING");
		this._SetSetting("ALL_TRIALS_UNLOCKED", true, "TESTING");
		this._SetSetting("SHOW_ELO_SCORE", true, "TESTING");
		this._SetSetting("SKIP_ELO_SEARCH", true, "TESTING");
		this._SetSetting("ENABLED", true, "PERFORMANCE");
		this._SetSetting("_AUTO_BUILD_", 2, "PERFORMANCE");
		this._SetSetting("FPS_COUNTER", true, "PERFORMANCE");
		this._SetSetting("ENABLE_AUTO_BUILD", true, "PERFORMANCE");
		this._SetSetting("AUTO_BUILD_BRICK_PACKS", new string[]
		{
			"_DEFAULT_PACK"
		}, "PERFORMANCE");
		this._SetSetting("ENABLED", true, "JONATHAN");
		this._SetSetting("INSTANT_SPELL", SpellName.ALL_SPELLS, "JONATHAN");
		this._SetSetting("AUDIO_DISABLED", true, "JONATHAN");
		this._SetSetting("ENABLED", true, "SAMAR");
		this._SetSetting("FORCED_LOCALE", "en", "SAMAR");
		this._SetSetting("ALL_TRIALS_UNLOCKED", true, "SAMAR");
		this._SetSetting("ENABLED", true, "REBECCA");
		this._SetSetting("_ON_SCREEN_LOGS", true, "REBECCA");
		this._SetSetting("FORCED_LOCALE", "ar", "REBECCA");
		this._SetSetting("ENABLED", true, "EON");
		this._SetSetting("FORCED_LOCALE", "en", "EON");
		this._SetSetting("ENABLED", true, "JORAN");
		this._SetSetting("_DEBUG_CONTROLLERS", true, "JORAN");
		this._SetSetting("FORCED_LOCALE", "en", "JORAN");
		this._SetSetting("ENABLED", true, "JORAM");
		this._SetSetting("RACE_HEIGHT", 10, "JORAM");
		//// ALL ON FROM HERE IS HAX; REMEMBER _currentProfile ON TOP
		this._SetSetting("ENABLED", true, "VLATKO");
        this._SetSetting("_DLC_UNLOCKED_PC", true, "VLATKO");
        this._SetSetting("FPS_COUNTER", true, "VLATKO");
        //this._SetSetting("INSTANT_SPELL", SpellName.ALL_SPELLS, "VLATKO");
		//what does below do????
		//this._SetSetting("SHOW_HUD_AT_END", true, "VLATKO");
		//this._SetSetting("INSTANT_SPELL", new string[] { "AUTO_BUILD" }, "VLATKO");
	}
}

-- ============================================================
-- FS25_NoVehicleNameDisplay
-- Version: 1.0.0.0
-- Autor: LimnedMoon
--
-- Entfernt die Fahrzeugname-Einblendung beim Einsteigen.
-- Removes the vehicle name popup on vehicle enter.
-- ============================================================

local origLoadFinished = Mission00.loadMission00Finished
Mission00.loadMission00Finished = function(mission, ...)
    origLoadFinished(mission, ...)

    if g_currentMission ~= nil
            and g_currentMission.hud ~= nil
            and g_currentMission.hud.vehicleNameDisplay ~= nil then
        local vnd = g_currentMission.hud.vehicleNameDisplay
        vnd.setVisible = function() end
        vnd.update     = function() end
    end
end

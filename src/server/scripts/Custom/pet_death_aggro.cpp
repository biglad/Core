#include "ScriptMgr.h"
#include "Player.h"
#include "Pet.h"
#include "Creature.h"

class PetDeathAggroScript : public PlayerScript
{
public:
    PetDeathAggroScript() : PlayerScript("PetDeathAggroScript") {}

    void OnPetDied(Player* owner, Pet* pet) override
    {
        if (!owner || !pet)
            return;

        // Iterate through creatures near the pet
        std::list<Creature*> creatures;
        pet->GetCreatureListWithEntryInGrid(creatures, 0, 30.0f); // radius 30 yards

        for (Creature* creature : creatures)
        {
            if (!creature->IsAlive())
                continue;
            if (!creature->IsHostileTo(owner))
                continue;
            // Only handle creatures that were in combat with the pet
            if (!creature->IsInCombatWith(pet))
                continue;

            // Method 1: Directly force attack the owner (simplest, but may break threat logic)
            creature->AI()->AttackStart(owner);

            // Method 2: Add threat, letting the creature naturally switch targets (more "blizzlike")
            // creature->AddThreat(owner, creature->GetThreatManager().GetThreat(pet));
        }
    }
};

void AddSC_pet_death_aggro()
{
    new PetDeathAggroScript();
}
#include "ScriptMgr.h"
#include "SpellScript.h"
#include "SpellAuras.h"

/*
DELETE FROM `spell_script_names` WHERE `ScriptName` = 'spell_felguard_cleave_filter';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(30213, 'spell_felguard_cleave_filter'),
(30219, 'spell_felguard_cleave_filter'),
(30223, 'spell_felguard_cleave_filter'),
(47994, 'spell_felguard_cleave_filter');
*/

// Adjust class name as needed, e.g., spell_felguard_cleave
class spell_felguard_cleave_filter : public SpellScriptLoader
{
public:
    spell_felguard_cleave_filter() : SpellScriptLoader("spell_felguard_cleave_filter") { }

    class spell_felguard_cleave_filter_SpellScript : public SpellScript
    {
        PrepareSpellScript(spell_felguard_cleave_filter_SpellScript);

        void FilterTargets(std::list<WorldObject*>& targets)
        {
            // Get the caster (Felguard)
            Unit* caster = GetCaster();
            if (!caster)
                return;

            // Get the caster's owner (Warlock)
            Unit* owner = caster->GetOwner();
            if (!owner)
                return;

            // Remove the owner from the target list
            targets.remove(owner);
        }

        void Register() override
        {
            // Cleave is typically a cone target type; filter EFFECT_0's cone targets
            // If the spell has multiple effects, you may need to register multiple times or use a different target type
            OnUnitTargetSelect += SpellUnitTargetFn(spell_felguard_cleave_filter_SpellScript::FilterTargets, EFFECT_0, TARGET_UNIT_CONE_ENEMY_24);
            // If the DBC target type is not 24, you may need to adjust or try other TARGET_UNIT_CONE_ENEMY_XX
        }
    };

    SpellScript* GetSpellScript() const override
    {
        return new spell_felguard_cleave_filter_SpellScript();
    }
};

void AddSC_spell_felguard_cleave()
{
    new spell_felguard_cleave_filter();
}
-- due to new voting system,etc making these BoP
-- MGA Token
--UPDATE `item_template` SET `Flags`='1' WHERE (`entry`='21140');
-- MGA Mini Token
--UPDATE `item_template` SET `Flags`='1' WHERE (`entry`='18154');

-- Make Binf to Account
UPDATE `item_template` SET `Quality`='7', `Flags`='134221824' WHERE (`entry`='18154');
UPDATE `item_template` SET `Quality`='7', `Flags`='134221824' WHERE (`entry`='21140');

UPDATE `item_template` SET `bonding`='1' WHERE (`entry`='21140');
UPDATE `item_template` SET `bonding`='1' WHERE (`entry`='18154');

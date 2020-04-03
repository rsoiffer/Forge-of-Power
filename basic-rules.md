---
layout: single
title: Basic Rules
sidebar:
  nav: rules
---

Following are some common rules for the game.

## Die Rolls

When you attempt a task that has a chance of failing, you roll dice to determine if your attempt succeeds or fails. All die rolls are associated one stat, called the **bonus** of the die roll. This stat is usually an attribute or a skill, but can be any number. The die roll is usually referred to by this bonus: if you make a die roll where the bonus is your Strength attribute, then it's called a Strength roll, or if you make a die roll where the bonus is your Stealth skill, then it's called a Stealth roll.

To make the die roll, roll 1d20 and add the bonus, and note the result. Your result measures how effectively you attempt the task. Compare this value to the DC set by the GM, using the table below. If you roll a 20 on the die, then your result is one level of success higher than it would normally be. If you roll a 1 on the die, then your result is one level of success lower than it would normally be.

### Levels of Success
<table>
  <tr>
    <th>Result</th>
    <th>Values</th>
    <th>Description</th>
  </tr>
  <tr>
    <td>Critical Success</td>
    <td>DC + 10 or more</td>
    <td>An exceptionally good result, with bonus positive effects</td>
  </tr>
  <tr>
    <td>Success</td>
    <td>DC + 0 ... DC + 9</td>
    <td>You succeed at the task you were attempting</td>
  </tr>
  <tr>
    <td>Failure</td>
    <td>DC - 10 ... DC - 1</td>
    <td>You fail at the task you were attempting</td>
  </tr>
  <tr>
    <td>Critical Failure</td>
    <td>DC - 11 or less</td>
    <td>An exceptionally bad result, with bonus negative effects</td>
  </tr>
</table>

## Difficulty Classes

The DC (Difficulty Class) of a die roll is usually determined by the GM based on how hard the task seems. The GM is encouraged to used the table below to help them decide the DC. Some abilities call for a die roll against a specific DC. For example, the Strike action calls for a die roll where the DC is your target's AC.

### Sample Difficulties
<table>
  <tr>
    <th>Difficulty</th>
    <th>DC</th>
    <th>Description</th>
  </tr>
  <tr>
    <td>Simple</td>
    <td>10</td>
    <td>Something a normal person could do with some effort</td>
  </tr>
  <tr>
    <td>Average</td>
    <td>15</td>
    <td>A task a skilled professional could struggle with</td>
  </tr>
  <tr>
    <td>Hard</td>
    <td>20</td>
    <td>Requires significant training to accomplish</td>
  </tr>
  <tr>
    <td>Very Hard</td>
    <td>25</td>
    <td>Very difficult even for a skilled professional</td>
  </tr>
  <tr>
    <td>Extremely Hard</td>
    <td>30</td>
    <td>Almost impossible except for the greatest masters alive</td>
  </tr>
  <tr>
    <td>Impossible</td>
    <td>40</td>
    <td>At the edge of human achievement, never been done before</td>
  </tr>
</table>

## Turns in Combat

Characters take turns during combat, as who acts first can be very important. When a fight breaks out, everyone involved makes an Initiative roll. Whoever gets the highest result takes the first turn. On your turn, you can use one Action power and any number of Free powers.

At the end of your turn, you pick who takes the next turn, ally or enemy. If you attacked a creature, that creature can choose to overrule your choice and take the next turn instead. No matter what, no one can take multiple turns in the same round. The round ends once everyone has taken a turn. The person who took the last turn in the round chooses who starts the next round.

## Attacking

Player characters are often involved in armed combat against enemies. When any character wants to make an attack with a [weapon](weapons.html), they follow the rules below.

### Attack Rolls
Every weapon is associated with a particular skill, such as Melee Weapons for a laser sword or Heavy Weapons for a blaster rifle. When you attack, make a special skill roll (called an **attack roll**) with the skill associated with the weapon you're attacking with. The DC for this skill roll is your target's AC. On a failure or critical failure, your attack misses or is blocked, and has no effect on your target. On a success, your attack is a hit and deals damage. On a critical success, your attack is a critical hit and deals double damage.

### Damage Rolls
When you hit an attack, you deal damage to your target. Your attack's damage and damage type are listed in the weapon's stat block. If you're making a melee attack, note the attribute you added to the attack roll, and add this attribute as a bonus to the attack's damage. If you're making a ranged attack, **do not** add this attribute to the attack's damage. Compute the total damage, and subtract this value from your target's HP.

## Saving Throws

The three skills {Fortitude}, {% ref Reflex %}, and {% ref Will %} represent your character's ability to avoid or resist various types of attacks. Skill rolls made with these skills are called **saves** or **saving throws**. Unless otherwise specified, a saving throw against a damaging effect does the following.

**Critical Success:** You take no damage from the effect

**Success:** You take half the listed damage from the effect

**Failure:** You take the full damage listed from the effect

**Critical Failure:** You take double the listed damage from the effect

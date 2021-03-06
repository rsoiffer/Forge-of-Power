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
    <td>An exceptionally bad result, with possible negative effects</td>
  </tr>
</table>

## Difficulty Classes

The DC (Difficulty Class) of a die roll is usually determined by the GM based on how hard the task seems. The GM is encouraged to used the table below to help them decide the DC. Some abilities call for a die roll against a specific DC. For example, the {Strike} power calls for a die roll where the DC is your target's Defense stat.

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

## Advantage, Disadvantage, and Rerolls

Some effects can give you **advantage** or **disadvantage** on a die roll, representing a minor cicumstantial bonus or penalty. When you have advantage on a die roll, you roll the d20 twice and take the higher value. When you have disadvantage on a die roll, you roll the d20 twice and take the lower value. If you have both advantage and disadvantage on a die roll, you only roll the d20 once.

Some effects let you **reroll** a die roll after it's made. When you do, repeat the exact same die roll, with the same bonuses, penalties, advantage, and disadvantage as the original. Then, you can pick whether to use the original die roll or the new one.

## Turns in Combat

Characters take turns during combat, as who acts first can be very important. When a fight breaks out, everyone involved makes an Initiative roll. Whoever gets the highest result takes the first turn. On your turn, you can use one {% icon 1-Action %} power and any number of {% icon Free %} powers. You can't use the same {% icon Free %} power more than once on the same turn.

At the end of your turn, you pick who takes the next turn, ally or enemy. If you attacked a creature, that creature can choose to {Interrupt} your choice and take the next turn instead. No matter what, no one can take multiple turns in the same round. The round ends once everyone has taken a turn. The person who took the last turn in the round chooses who starts the next round. If you took the last turn in a round, you can choose yourself to go first the next round.

## Attacks

Some powers represent offensive effects designed to hurt or impede enemies. These are called [[Attack]] powers, or just **attacks** for short. Attacks always involve a die roll, called the **attack roll**. The attacker makes the the attack roll only once, no matter how many targets the attack has. The attack roll specifies which of the target's stat to use as the DC, usually Defense or an attribute DC. Since each target can have a different value for this DC, an attack can hit one target but miss another.

For example, the {Strike} power is an attack. Imagine that Alice uses the {Strike} power, slashing at Bob with a sword. Alice makes a Strength attack roll against Bob's Defense. If the result of Alice's attack roll is equal to or higher than Bob's Defense score, then Alice's attack is a success, and deals damage as described in the {Strike} power.

## Instructions for generating monthly contract offers

### Step 1: Determine number of offers

The number of offers received depends on a non-linear combination of the hiring hall and the unit rating. Poorly-rated units will have a harder time competing with the big fish at the superior hiring halls, while the top-rated units will have trouble finding suitable contracts in the lower tier of hiring halls. Use the following table to determine the modifier applied to the roll.

| Hall         | No Rating  |     F   |     D   | C       | B       | A        | A*       |
|--------------|-----------:|--------:|--------:|--------:|--------:|---------:|---------:|
| None         |    -3      |    -3   |    -3   |    -3   |    -3   |    -3    |    -3    |
| Questionable |    +0      |    +1   |    +2   |    +1   |    +0   |    -1    |    -2    |
| Minor        |    -2      |    +0   |    +1   |    +2   |    +1   |    +0    |    -1    |
| Standard     |    -4      |    -2   |    +0   |    +1   |    +2   |    +1    |    +0    |
| Great        |    -6      |    -4   |    -2   |    +0   |    +1   |    +2    |    +2    |

<br>

A unit that has an administrator or commanding officer with the well-connected perk can add an additional +1 to the modifier.

To find the number of contract offers this month, roll 2d6 and add the modifier. Then consult the following table.


| Roll          | Offers |
|---------------|-------:|
| 6 or less     |     0  |
| 7-9           |     1  |
| 10-11         |     2  |
| 12-13         |     3  |
| 14 or more    |     4  |

<br>

### Step 2: Determine each contract

#### Step 2a: Determine employer

First, determine the employer modifiers based on hall type and unit rating, using the tables below.


| Hall         | Employer |
|--------------|---------:|
| None         |    -4    |
| Questionable |    -3    |
| Minor        |    -1    |
| Standard     |    +1    |
| Great        |    +2    |

<br>

| Rating | Employer |
|--------|---------:|
| None   |    -3    |
| F      |    -2    |
| D      |    -1    |
| C      |    +0    |
| B      |    +1    |
| A      |    +2    |
| A*     |    +2    |

<br>

Then make a 2d6 roll, adding both modifiers, and consult the "Employer" column of the table. 

| Roll       | Employer    | Independent    | Minor              |
|------------|-------------|----------------|--------------------|
| 2 or less  | Independent | Private Party  | Minor Periphery    |
| 3          | Independent | Private Party  | Minor Periphery    |
| 4          | Independent | Private Party  | Minor Periphery    |
| 5          | Independent | Private Party  | Minor Periphery    |
| 6          | Minor Power | Planetary Gov  | Major Periphery    |
| 7          | Minor Power | Planetary Gov  | Major Periphery    |
| 8          | Minor Power | Planetary Gov  | Major Periphery    |
| 9          | Major Power | Mercenary      | Minor Inner Sphere |
| 10         | Major Power | Corporation    | Minor Inner Sphere |
| 11         | Major Power | Corporation    | Minor Inner Sphere |
| 12 or more | Major Power | Corporation    | Minor Inner Sphere |

<br>

If you get *Independent Employer* or *Minor Power* on this roll, then roll again (with the same modifiers) on the appropriate column to see more exactly what kind of employer you get.

If you get the *Mercenary* result, then this is a subcontract from another mercenary group. Roll again to determine the original employer with a +2 bonus.

### Step 2b: Determine Mission Type

Mission type is determined by a straight 2d6 roll. Look on the appropriate column of the table below based on the employer type for the mission type. If you get *Special* or *Covert*, roll again on those columns.

| Roll | Inner Sphere      | Periphery         | Corporation     | Planetary Gov    | Private Party    | Special           | Covert            |
|------|-------------------|-------------------|-----------------|-------------------|-----------------|-------------------|-------------------|
| 2    | Pirate Hunting    | Riot Duty         | Cadre Duty      | Riot Duty         | Cadre Duty      | Cadre Duty        | Mole Hunting      |
| 3    | Cadre Duty        | Cadre Duty        | Cadre Duty      | Cadre Duty        | Cadre Duty      | Riot Duty         | Observation Raid  |
| 4    | Garrison Duty     | Garrison Duty     | Garrison Duty   | Security Duty     | Garrison Duty   | Security Duty     | Observation Raid  |
| 5    | Garrison Duty     | Garrison Duty     | Garrison Duty   | Garrison Duty     | Garrison Duty   | Retainer          | Recon Raid        |
| 6    | Extraction Raid   | Pirate Hunting    | Security Duty   | Garrison Duty     | Security Duty   | Extraction Raid   | Diversionary Raid | 
| 7    | Objective Raid    | Objective Raid    | Objective Raid  | Garrison Duty     | Security Duty   | Recon Raid*       | Guerilla          |
| 8    | Objective Raid    | Objective Raid    | Extraction Raid | Extraction Raid   | Extraction Raid | Relief Duty       | Sabotage          |
| 9    | Planetary Assault | Extraction Raid   | Recon Raid      | Recon Raid        | Recon Raid      | Diversionary Raid | Espionage         |
| 10   | Recon Raid        | Planetary Assault | Special         | Pirate Hunting    | Objective Raid  | Guerilla          | Assassination     |
| 11   | Special           | Special           | Covert          | Planetary Assault | Special         | Guerilla*         | Assassination     |
| 12   | Covert            | Covert            | Covert          | Special           | Covert          | Covert            | Terrorism         |

<br>

An \* means that this contract is followed up immediately by a full *Planetary Assault* contract.

### Step 2c: Determine contract characteristics

Use the tables below to to determine pay multiplier, contract length, and supplemental modifiers due to mission type, employer type, and, unit rating. Pay multipliers are multiplied together to determine the final pay multiplier, while supplemental modifiers are summed.

| Type                | Pay Multiplier |  Length   | Command | Salvage | Support | Transport |
|---------------------|---------------:|-----------|--------:|--------:|--------:|----------:|
| Assassination       |    1.7         |  3 months |      +2 |      +1 |      -1 |       -2  |
| Cadre Duty          |    0.8         | 12 months |      +0 |      +0 |      +1 |       +0  |
| Diversionary Raid   |    1.6         |  3 months |      +0 |      +2 |      +2 |       +1  |
| Espionage           |    1.9         | 12 months |      -1 |      +4 |      -3 |       -2  |
| Extraction Raid     |    1.5         |  3 months |      -1 |      -1 |      +2 |       +1  |
| Garrison Duty       |    1.0         | 18 months |      +1 |      +0 |      +1 |       +0  |
| Guerilla            |    2.0         | 24 months |      -2 |      +3 |      -2 |       -1  |
| Mole Hunting        |    1.0         |  6 months |      -3 |      +0 |      +2 |       +1  |
| Objective Raid      |    1.5         |  3 months |      -1 |      +0 |      +2 |       +1  |
| Observation Raid    |    1.5         |  3 months |      -1 |      -2 |      +1 |       -1  |
| Pirate Hunting      |    1.1         |  6 months |      +2 |      +2 |      -1 |       -1  |
| Planetary Assault   |    1.4         |  9 months |      -2 |      +0 |      +2 |       +3  |
| Recon Raid          |    1.5         |  3 months |      -1 |      -2 |      +1 |       -1  |
| Relief Duty         |    1.4         |  9 months |      -1 |      +1 |      +1 |       +1  |
| Retainer            |    1.2         | 12 months |      -2 |      +0 |      +2 |       +1  |
| Riot Duty           |    1.0         |  4 months |      -2 |      +1 |      +2 |       +0  |
| Sabotage            |    2.0         |  3 months |      -1 |      +4 |      -3 |       -2  |
| Security Duty       |    1.1         |  6 months |      -3 |      +0 |      +2 |       +1  |
| Terrorism           |    1.7         |  3 months |      +2 |      +1 |      -1 |       -3  |

<br>

| Type               | PayMult | Command | Salvage | Support | Transport |
|--------------------|--------:|--------:|--------:|--------:|----------:|
| Major Power        |   1.2   |     -1  |     -1  |      +1 |    +2     |
| Minor Inner Sphere |   1.0   |     +0  |     -2  |      +0 |    +1     |
| Major Periphery    |   0.9   |     +0  |     -2  |      +0 |    +0     |
| Minor Periphery    |   0.75  |     +0  |     -2  |      -1 |    -1     |
| Planetary Gov      |   0.75  |     +1  |     -1  |      -2 |    -1     |
| Corporation        |   1.1   |     -1  |     +2  |      +1 |    +1     |
| Mercenary          |   1.1   |     -1  |     +2  |      +1 |    +1     |
| Private Party      |   0.7   |     +0  |     +0  |      +0 |    -1     |

<br>

| Rating | Employer | PayMult | Command | Salvage | Support | Transport |
|--------|---------:|--------:|--------:|--------:|--------:|----------:|
| None   |    -3    | 0.5     |   -2    |   -1    |   -1    |     -3    |
| F      |    -2    | 0.7     |   -1    |   -1    |   -1    |     -2    |
| D      |    -1    | 0.8     |   -1    |   +0    |   +0    |     -1    |
| C      |    +0    | 0.9     |   +0    |   +0    |   +0    |     +0    |
| B      |    +1    | 1.0     |   +1    |   +1    |   +0    |     +0    |
| A      |    +2    | 1.1     |   +2    |   +1    |   +1    |     +1    |
| A*     |    +2    | 1.15    |   +3    |   +2    |   +2    |     +2    |

<br>

To determine supplemental characteristics roll a 2d6 for each column below, applying the appropriate modifiers each time. 

| Roll         | Command     | Overhead | Salvage  | Support       | Transport |
|--------------|-------------|----------|----------|---------------|-----------|
| 2 or less    | Integrated  | None     | Exchange | None          | None      |
| 3            | House       | Half     | 10%      | Straight/25%  | 10%       |
| 4            | House       | Half     | 20%      | Straight/50%  | 20%       |
| 5            | House       | Half     | 30%      | Straight/75%  | 30%       |
| 6            | House       | Half     | 40%      | Straight/Full | 40%       |
| 7            | Liaison     | Full     | 50%      | Battle/10%    | 50%       |
| 8            | Liaison     | Full     | 60%      | Battle/20%    | 60%       |
| 9            | Liaison     | Full     | 70%      | Battle/30%    | 70%       |
| 10           | Independent | Full     | 80%      | Battle/40%    | 80%       |
| 11           | Independent | Full     | 90%      | Battle/50%    | 90%       |
| 12 or more   | Independent | Full     | Full     | Battle/60%    | Full      |

<br>

## Step 3: Negotiate contract

### Determine negotiators

To negotiate the contract, first determine the skill level of the other negotiator. This is determined by a 2d6 roll with modifiers listed below based on the employer type.

| Type               | Negotiator |
|--------------------|------------:|
| Major Power        |   +2        |
| Minor Inner Sphere |   +1        |
| Major Periphery    |   +0        |
| Minor Periphery    |   -1        |
| Planetary Gov      |   -1        |
| Corporation        |   +2        |
| Mercenary          |   +0        |
| Private Party      |   -2        |

<br>

| Roll   | Negotiator Skill |
|--------|------------------|
| 2-5    | Green (6+)       |
| 6-8    | Regular (5+)     |
| 9-10   | Veteran (4+)     |
| 11-12  | Elite (3+)       |

The player should also have a negotiator which will typically be either be the commanding officer or an administrator. Determine the negotiation skill of this person by whatever means makes sense in your campaign.

### Negotiating points

The player's side has three negotiating points that can be used to potentially shift the value of the contract in some way. Each point can be used to do one of the following:

* Increase the pay multiplier by 0.05 (5%).
* Increase the length of the contract by a month.
* Increase the dice roll by one for any supplemental item, except for the MRBC.

Multiple points can be applied to the same thing, but each one is resolved individually.

A negotiator with the *Haggler* perk gets one additional negotiating point.

### The negotiation

When the player decides to negotiate a point, they make an opposed negotiation check with the NPC negotiator. Both roll 2d6 and compare this to their target number. If both fail or both have the same margin of success, then roll again. Otherwise, the winner is the one with the highest margin of success.

If the player wins, then the negotiation was successful and they may adjust the contract. If the opposing negotiator wins, the negotiation is unsuccessful and the contract is unchanged. Either way, a negotiating point is lost.

### Regaining negotiating points

The player may regain a negotiating point by doing the following:

* Decrease the pay multiplier by 0.1 (10%)
* Decrease the dice roll by two for any supplemental item, except for the MRBC and the Overhead.

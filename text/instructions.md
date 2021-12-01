## Instructions for generating monthly contract offers

This generator will automatically apply Steps 1 and 2 detailed below to determine the contracts received by a unit in a given month. The user simply needs to input the hall and unit rating characteristics and hit the generate button. The negotiation described in Step 3 is not part of the automated process.

### Step 1: Determine number of offers

The number of offers received depends on a non-linear combination of the hiring hall and the unit rating. Poorly-rated units will have a harder time competing with the big fish at the superior hiring halls, while the top-rated units will have trouble finding suitable contracts in the lower tier of hiring halls. Use Table 1 below to determine the modifier.

| Hall         | No Rating  |     F   |     D   | C       | B       | A        | A*       |
|--------------|-----------:|--------:|--------:|--------:|--------:|---------:|---------:|
| None         |    -2      |    -2   |    -2   |    -2   |    -2   |    -2    |    -2    |
| Questionable |    +0      |    +1   |    +2   |    +1   |    +0   |    -1    |    -2    |
| Minor        |    -1      |    +0   |    +1   |    +2   |    +1   |    +0    |    -1    |
| Standard     |    -2      |    -1   |    +0   |    +1   |    +2   |    +1    |    +0    |
| Great        |    -3      |    -2   |    -1   |    +0   |    +1   |    +2    |    +2    |
**Table 1:** Modifiers for the number of offers


A unit that has an administrator or commanding officer with the well-connected perk can add an additional +1 to the modifier.

To find the number of contract offers in a month, roll 2d6 and add the modifier calculated above. Then consult Table 2 below.

| Roll          | Offers |
|---------------|-------:|
| 7 or less     |     0  |
| 8-9           |     1  |
| 10-11         |     2  |
| 12 or more    |     3  |
**Table 2:** Determine number of offers in a month


### Step 2: Determine each contract

#### Step 2a: Determine employer

First, determine the employer modifiers based on hall type and unit rating, using Tables 3 and 4 below.

| Hall         | Employer | MRBC  |
|--------------|---------:|------:|
| None         |    -3    |  -8   |
| Questionable |    -2    |  -4   |
| Minor        |    -1    |  -1   |
| Standard     |    +1    |  +1   |
| Great        |    +2    |  +4   |
**Table 3:** Hiring hall modifiers


| Rating | Employer | Pay Multipier | Command | Salvage | Support | Transport | Advance | MRBC |
|--------|---------:|--------------:|--------:|--------:|--------:|----------:|--------:|-----:|
| None   |    -3    | 0.5           |   -2    |   -1    |   -1    |     -3    |   -2    |  -1  |
| F      |    -2    | 0.7           |   -1    |   -1    |   -1    |     -2    |   -1    |  -1  |
| D      |    -1    | 0.8           |   -1    |   +0    |   +0    |     -1    |   -1    |  -1  |
| C      |    +0    | 0.9           |   +0    |   +0    |   +0    |     +0    |   +0    |  +0  |
| B      |    +1    | 1.0           |   +1    |   +1    |   +0    |     +0    |   +0    |  +1  |
| A      |    +2    | 1.1           |   +2    |   +1    |   +1    |     +1    |   +1    |  +1  |
| A*     |    +2    | 1.15          |   +3    |   +2    |   +2    |     +2    |   +1    |  +1  |
**Table 4: Unit rating modifiers** 


Then make a 2d6 roll, adding both modifiers, and consult the "Employer" column of Table 5 below. 

| Roll       | Employer    | Independent    | Minor              |
|------------|-------------|----------------|--------------------|
| 2 or less  | Independent | Private Party  | Minor Periphery    |
| 3          | Independent | Private Party  | Minor Periphery    |
| 4          | Independent | Private Party  | Minor Periphery    |
| 5          | Independent | Private Party  | Major Periphery    |
| 6          | Minor Power | Planetary Gov  | Major Periphery    |
| 7          | Minor Power | Planetary Gov  | Major Periphery    |
| 8          | Minor Power | Planetary Gov  | Major Periphery    |
| 9          | Corporation | Planetary Gov  | Minor Inner Sphere |
| 10         | Major Power | Planetary Gov  | Minor Inner Sphere |
| 11         | Major Power | Mercenary      | Minor Inner Sphere |
| 12 or more | Major Power | Mercenary      | Minor Inner Sphere |
**Table 5:** Employer determination table


If you get *Independent Employer* or *Minor Power* on this roll, then roll again (with the same modifiers) on the appropriate column to see more exactly what kind of employer you get.

If you get the *Mercenary* result, then this is a subcontract from another mercenary group. Roll again to determine the original employer with a single +2 bonus.

### Step 2b: Determine Mission Type

Mission type is determined by a straight 2d6 roll. Look on the appropriate column of Table 6 below based on the employer type to determine mission type. If you get *Special* or *Covert*, roll again on those columns.

| Roll | Inner Sphere      | Periphery         | Corporation     | Planetary Gov    | Private Party    | Special           | Covert            |
|------|-------------------|-------------------|-----------------|-------------------|-----------------|-------------------|-------------------|
| 2    | Pirate Hunting    | Riot Duty         | Riot Duty       | Riot Duty         | Cadre Duty      | Cadre Duty        | Mole Hunting      |
| 3    | Cadre Duty        | Cadre Duty        | Cadre Duty      | Cadre Duty        | Retainer        | Riot Duty         | Observation Raid  |
| 4    | Garrison Duty     | Garrison Duty     | Garrison Duty   | Security Duty     | Garrison Duty   | Security Duty     | Observation Raid  |
| 5    | Garrison Duty     | Garrison Duty     | Garrison Duty   | Garrison Duty     | Garrison Duty   | Retainer          | Recon Raid        |
| 6    | Extraction Raid   | Pirate Hunting    | Security Duty   | Garrison Duty     | Security Duty   | Extraction Raid   | Diversionary Raid | 
| 7    | Objective Raid    | Objective Raid    | Objective Raid  | Garrison Duty     | Security Duty   | Recon Raid*       | Guerrilla         |
| 8    | Objective Raid    | Objective Raid    | Extraction Raid | Extraction Raid   | Extraction Raid | Relief Duty       | Sabotage          |
| 9    | Planetary Assault | Extraction Raid   | Recon Raid      | Recon Raid        | Recon Raid      | Diversionary Raid | Espionage         |
| 10   | Recon Raid        | Planetary Assault | Retainer        | Pirate Hunting    | Objective Raid  | Guerrilla         | Assassination     |
| 11   | Special           | Special           | Special         | Planetary Assault | Special         | Guerrilla*        | Assassination     |
| 12   | Covert            | Covert            | Covert          | Special           | Covert          | Covert            | Terrorism         |
**Table 6:** Mission type determination table  
\* means that this contract is followed up immediately by a full *Planetary Assault* contract.


### Step 2c: Determine contract characteristics

Use Tables 3, 4, 7, and 8 to determine the total pay multiplier, contract length, and supplemental modifiers due to mission type, employer type, unit rating, and hall. Pay multipliers are multiplied together to determine the final pay multiplier, while supplemental modifiers are summed across tables for the same characteristic.

| Type                | Pay Mult |  Length   | Command | Salvage | Support | Transport | Advance | MRBC | 
|---------------------|---------:|-----------|--------:|--------:|--------:|----------:|--------:|-----:|
| Assassination       |    1.7   |  3 months |      +2 |      +1 |      -1 |       -2  |    +0   |  -12 |
| Cadre Duty          |    0.8   | 12 months |      +0 |      +0 |      +1 |       +0  |    -1   |  +0  |
| Diversionary Raid   |    1.6   |  3 months |      +0 |      +2 |      +2 |       +1  |    +0   |  +1  |
| Espionage           |    1.9   | 12 months |      -1 |      +4 |      -3 |       -2  |    +0   |  -1  |
| Extraction Raid     |    1.5   |  3 months |      -1 |      -1 |      +2 |       +1  |    +0   |  +1  |
| Garrison Duty       |    1.0   | 18 months |      +1 |      +0 |      +1 |       +0  |    +0   |  +1  |
| Guerrilla           |    2.0   | 24 months |      -2 |      +3 |      -2 |       -1  |    +0   |  +0  |
| Mole Hunting        |    1.0   |  6 months |      -3 |      +0 |      +2 |       +1  |    +0   |  -1  |
| Objective Raid      |    1.5   |  3 months |      -1 |      +0 |      +2 |       +1  |    +0   |  +1  |
| Observation Raid    |    1.5   |  3 months |      -1 |      -2 |      +1 |       -1  |    +0   |  +1  |
| Pirate Hunting      |    1.1   |  6 months |      +2 |      +2 |      -1 |       -1  |    +0   |  +0  |
| Planetary Assault   |    1.4   |  9 months |      -2 |      +0 |      +2 |       +3  |    +1   |  +1  |
| Recon Raid          |    1.5   |  3 months |      -1 |      -2 |      +1 |       -1  |    +0   |  +1  |
| Relief Duty         |    1.4   |  9 months |      -1 |      +1 |      +1 |       +1  |    +0   |  +1  |
| Retainer            |    1.2   | 12 months |      -2 |      +0 |      +2 |       +1  |    +0   |  +0  |
| Riot Duty           |    1.0   |  4 months |      -2 |      +1 |      +2 |       +0  |    +0   |  +0  |
| Sabotage            |    2.0   |  3 months |      -1 |      +4 |      -3 |       -2  |    +0   |  -1  |
| Security Duty       |    1.1   |  6 months |      -3 |      +0 |      +2 |       +1  |    +0   |  +0  |
| Terrorism           |    1.7   |  3 months |      +2 |      +1 |      -1 |       -3  |    +0   |  -12 |
**Table 7:** Mission type modifier table


| Type               | Pay Multiplier | Command | Salvage | Support | Transport | Advance | MRBC | Negotiator |
|--------------------|---------------:|--------:|--------:|--------:|----------:|--------:|-----:|-----------:|
| Major Power        |   1.2          |     -1  |     -1  |      +1 |    +2     |    +2   |  +2  |      +2    | 
| Minor Inner Sphere |   1.0          |     +0  |     -2  |      +0 |    +1     |    +1   |  +2  |      +1    |
| Major Periphery    |   0.9          |     +0  |     -2  |      +0 |    +0     |    +0   |  +1  |      +0    |
| Minor Periphery    |   0.75         |     +0  |     -2  |      -1 |    -1     |    -1   |  +1  |      -1    |
| Planetary Gov      |   0.75         |     +1  |     -1  |      -2 |    -1     |    -1   |  +0  |      -1    |
| Corporation        |   1.1          |     -1  |     +2  |      +1 |    +1     |    +2   |  +0  |      +2    |
| Mercenary          |   1.1          |     -1  |     +2  |      +1 |    +1     |    -2   |  +0  |      +0    |
| Private Party      |   0.7          |     +0  |     +0  |      +0 |    -1     |    -2   |  -2  |      -2    |
**Table 8:** Employer type modifier table


To determine supplemental characteristics roll a 2d6 for each column below, applying the appropriate modifiers each time. 

| Roll       | Command     | Overhead | Salvage  | Support       | Transport | Advance | MRBC | 
|------------|-------------|----------|----------|---------------|-----------|---------|------|
| 2 or less  | Integrated  | None     | None     | None          | None      |  None   |  No  |
| 3          | House       | Half     | Exchange | Straight/25%  | 10%       |  None   |  No  |
| 4          | House       | Half     | Exchange | Straight/50%  | 20%       |  None   |  No  |
| 5          | House       | Half     | 10%      | Straight/75%  | 30%       |  10%    |  No  |
| 6          | House       | Half     | 25%      | Straight/Full | 40%       |  20%    | Yes  |
| 7          | Liaison     | Full     | 40%      | Battle/10%    | 50%       |  20%    | Yes  |
| 8          | Liaison     | Full     | 55%      | Battle/20%    | 60%       |  25%    | Yes  |
| 9          | Liaison     | Full     | 70%      | Battle/30%    | 70%       |  25%    | Yes  |     
| 10         | Independent | Full     | 85%      | Battle/40%    | 80%       |  25%    | Yes  |
| 11         | Independent | Full     | 100%     | Battle/50%    | 90%       |  30%    | Yes  |
| 12 or more | Independent | Full     | 100%     | Battle/60%    | 100%      |  30%    | Yes  |
**Table 9:** Determine Supplemental Contract Characteristics


If the *Exchange* option is rolled for salvage, then roll again with the same modifiers until a percentage is given. 

## Step 3: Negotiate contract

### Determine negotiators

To negotiate the contract, first determine the skill level of the employer's negotiator. This is determined by a 2d6 roll with a modifier based on employer type as shown in Table 8. Consult Table 10 below to see the skill level of the employer's negotiator.

| Roll   | Negotiator Skill |
|--------|------------------|
| 2-5    | Green (6+)       |
| 6-8    | Regular (5+)     |
| 9-10   | Veteran (4+)     |
| 11-12  | Elite (3+)       |
**Table 10:** Determine employer's negotiator skill level


The player should also have a negotiator which will typically be either be the commanding officer or an administrator. Determine the negotiation skill of this person by whatever means makes sense in your campaign.

### Negotiating points

The player's side has three negotiating points that can be used to potentially shift the value of the contract in some way. Each point can be used to do one of the following:

* Increase the pay multiplier by 0.05 (5%).
* Increase the length of the contract by a month.
* Increase the dice roll by one for any supplemental item, except for the MRBC.
* Shift from exchange salvage rights to full salvage rights.

Multiple points can be applied to the same thing, but each one is resolved individually.

A negotiator with the *Haggler* perk gets one additional negotiating point.

### The negotiation

When the player decides to negotiate a point, they make an opposed negotiation check with the NPC negotiator. Both roll 2d6 and compare this to their target number. If both fail or both have the same margin of success, then roll again. Otherwise, the winner is the one with the highest margin of success.

If the player wins, then the negotiation was successful and they may adjust the contract. If the opposing negotiator wins, the negotiation is unsuccessful and the contract is unchanged. Either way, a negotiating point is lost.

### Regaining negotiating points

The player may regain a negotiating point by doing the following:

* Decrease the pay multiplier by 0.1 (10%)
* Decrease the dice roll by two for any supplemental item, except for the MRBC and the Overhead. 
* Shift from full salvage rights to exchange salvage rights and reduce the dice roll for salvage by one.

Lowering salvage below a percentage value by these means is equivalent to no salvage. 

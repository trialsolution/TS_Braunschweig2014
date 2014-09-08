# Trade Liberalization Session


## Trade Liberalization Session

1. What can you expect from the CAPRI market model?
    - Small recap on market model features -- their impact on FTA simulations
2. Hands-on (group) exercise: Russian import ban
3. coffee break!
3. Recent developments in the market model (advanced topics)
    - FAO data in the global database (__'new global'__ option)
    - __Policy blocks__ -- a new geographical layer in the market model
    - Price transmission from EU to member state level -- __endogenous price margins__
    - CGE-style market model

# Market model features (in general)
## Introduction to the market model

\centerline{\includegraphics[height=1.5in]{figure/concept.jpg}}

### 
- Multi-market, multi-commodity model; comparative static
- Quasi-welfare maximization, sum of producer and consumer surplus (FOCs define supply/demand) functions
- Calibration guarantees consistency with micro theory 
    - e.g. correct curvature and homogeneity conditions
    - flexible functional forms for demand (Generalized Leontief)    
    - 'elasticity calibration' for the supply functions


## Armington approach

- Armington assumption to depict bilateral trade flows
      - no 'world price' as in typical net trade models
      - goods are heterogenous (by place of origin)
      - both export and import are possible in the same trade direction
      - enherited small share problem (small trade flows remain small)
      - zero trade issue
      - nested CES approach (2 levels) linked to the GL demand system

## Armington approach

\centerline{\includegraphics[height=3in]{figure/armington_nest.png}}

## Trade policies in CAPRI

- Trade policies implemented
      - specific and ad valorem tariffs 
      - flexible levy system (guaranteed minimum border price)
      - entry price system for fruits and vegs (trigger price)
      - tariff rate quotas (TRQ)
      - public intervention 
      - export subsidies

 
## Trade policies in CAPRI -- Tariff Rate Quotas (TRQ)
      
- 'Transitional' measure for tariffication in the Uruguay Round
- Two-tiered tariff approach
    - lower tariff within a quota limit
    - higher tariff (usually MFN) exceeding the quota
- When filled, the quota creates economic rent
    - the allocation of the rent is non-trivial
    - the size of the rent depends on the demand
- How strong demand is creates different market regimes
    - underfilled, filled (at the quota), over-filled
- In CAPRI TRQs are modelled using a smooth approximation of the regime switches
      

\note{Rent allocatoion

- mostly depends on the quota allocation method
- rents have no impact on consumer decision or on profit maximization in CAPRI
- no lump sum transfer of rents back to consumers (no impact on budget constraint)
- rents are not added to the profit of exporters
}


## Trade policies in CAPRI -- Tariff Rate Quotas (TRQ)

\centerline{\includegraphics[height=3in]{figure/trq_underfilled.png}}


## Trade policies in CAPRI -- Tariff Rate Quotas (TRQ)

\centerline{\includegraphics[height=3in]{figure/trq.png}}

## Trade policies in CAPRI -- Tariff Rate Quotas (TRQ)

\centerline{\includegraphics[height=3in]{figure/trq_overfilled.png}}


## Trade policies in CAPRI -- Public intervention

\centerline{\includegraphics[height=1.5in]{figure/public_intervention.png}}

###
- Stock change = Purchases + Releases
- Buyin = intMax * errorf[ (PADM - P_market + calib.param) / SD]
- Release = (Stocks + Purchase) * [1 - errorf[ (UVAE - P_market + calib.param) / SD]]


\note{Notes on intervention:

- Both the calculation of purchases and releases assume a probability distribution behind market prices. 

- Based on that the probability of market prices undercutting the administrative prices is taken into account. 

- The assumed distribution is normal, which has the convenient property that it can be fully described with the mean and the standard deviation.} 

\note{

- SD is the standard deviation of market prices, estimated based on historical time series.

- PADM is the administrative price. 

- 'errorf' is a GAMS function which coincides with the cumulative distribution function of the standard normal distribution.
}


## Trade policies in CAPRI -- Flexible levy system (cereals)

\centerline{\includegraphics[height=2in]{figure/flexlevy.png}}

- Guarantees a minimum import price on the market with a flexible tariff rate
- The entry price system for F&V is modelled similarly, but using different
functional forms for the smooth approximation

## Market model features (other)     

- Market for young animals, clearing at member state level      
- Optimal feed mix 
    - cost minimization approach subject to nutritional and other technical constraints
    - CES share equations for tradable feed
    - energy balance (energy requirement = deliveries from feed)
- Dairy productions
    - fats and protein balance (raw milk --> dairy prods.)
    - for countries linked to the CAPRI supply models
    - processing margin based on shadow prices of fat and protein
- Processing industry
      - Oils and cakes separated
- Biofuel processing (transport fuel)
    - CES share equations for demand, double-log for supply from feedstock
    - both 1st and 2nd generation (latter is exogenous)
             
       
## Market model features (primary factors) 

- Endogenous land supply/demand
- Land is an explicit input to crop activities --> production functions define land demand
- Land use balance close the system (shadow price --> land rent)
- Other primary factors such as capital and labor are omitted (kept constant)       

### Explicit land supply curve f(land rent)
\centerline{\includegraphics[height=1.5in]{figure/land_supply_curve.png}}


\note{
- land is productin netput
- agricultural activities require land for the output (fixed proportion)
- that generates a demand for land
- shadow prices of the land constraint --> land rent
- land supply driven by land rents (land available for agriculture)
- we can model land abandonement or land going out of agriculture

}



## So what can you expect from an FTA simulation?

- Detailed representation of trade policies (e.g. tariff schedule)
- Impact of EU domestic policies on trade, see Mittenzwei et al. (2014): *Does the "green box" of the European Union distort global markets?*
- Obvious need for aggregation over tariff lines

### Impacts covered
- Commodity balances, bilateral trade, welfare accounting
- Regional impacts: EU --> member states --> NUTS2 --> farm types
- A wide range of secondary effects: land use, feed use, input costs, etc.
- That allows identifying vulnerable regions, production systems, farm types...
- ... and opportunities to expand
- Environmental indicators

\note{
- the Mittenzwei paper builds on a counterfactual scenario where the decoupled payments (reported under the green box) are abolished
- the impacts on supply are surprisingly small, supporting the small market distortive impact of these policies

}


## Hands on exercise

Now jump to the group exercises (Russian ban scenario...)


## Recent developments in the CAPRI market module


1. FAO data in the global database (__'new global'__ option)
2. __Policy blocks__ -- a new geographical layer in the market model
3. Price transmission from EU to member state level, i.e. __endogenous price margins__
4. CET nested structure for the market model, factor markets



# Recent developments in the market model
## Part I. FAO database update (Marcel)

- There is a module in CAPRI that builds a __consistent global database__ for the market model
- 'Use new global version' is an option to use the latest FAO data
- This option will become default soon...

\centerline{\includegraphics[height=1.5in]{figure/GUI_builddbase.png}}


## What do we use from FAOSTAT?

Official (and public) data on:

- Commodity balances
- Trade balances
- Production statistics
- Land use
- Trade matrix

And some restricted data on Taiwan...

## We really download it from the FAOSTAT website...

\centerline{\includegraphics[height=2.5in]{figure/FAO_trade.png}}


## FAO data consolidation

- The FAO database is consolidated in multiple steps
- Two major parts of consolidation: 
    1. 'country data', i.e. production statistics, commodity balances, milk products, population and producer prices
    2. 'tradeflows' related to the bilateral trade statistics
    
\centerline{\includegraphics[height=1.5in]{figure/FAO_consolidation_main.png}}


## country data consolidation

\centerline{\includegraphics[height=1.5in]{figure/fao_countrydata.png}}

## country data consolidation (cntnd.)

### Multiple data consolidation steps
- Check activity levels, yields and production quantities for completeness; apply heuristic rules to fill gaps
- correct commodity balances for Taiwan
- Map prodstat information on crops to commodity balances of primary product equivalent such that area- and yield information are available
- Consolidate land use data (e.g. nested land categories add up)
- Map the FAOSTAT Milktree to CAPRI (codes and different concepts)
- Fill gaps in population data for Serbia and Montenegro as well as Belgium/Luxembourg


\note{On milk systems FAO vs. CAPRI

- Example: In FAOSTAT, cheese can be made from skimmed milk. This cheese is however already allocated to the CHES aggregate and made from milk directly in CAPRI world. 
- That means the part of the production of skimmed milk that goes into cheese should not be counted as skimmed milk supply. After this mapping it appeared that the protein and fat balances did not hold.
- An optimization problem ensures this under the side condition that market balances hold as well.
}



## FAO trade data consolidation

\centerline{\includegraphics[height=1.5in]{figure/fao_tradeflow.png}}


## FAO trade data consolidation (cntnd.)

- Data selection and transformation to .gdx
- Aggregating notifications to trade totals
- Calculate bilateral and country level Unit VALues (UVALs) and world average UVALs from the raw data
- Handle missing data: linear trends, partner regressions and temporal weighted averages for smoothing and interpolation
- Data consolidation model 
- Original and consolidated data are visualized in the GUI (for comparison)


# Policy Blocks in the market model
## Part II. Policy blocks

- An additional layer of geographical regions to enable a better representation of actual trade policies in CAPRI
- Basic idea: trade regions are mapped to the set of "policy blocks"
- Policy blocks are regions that are homogenous with respect to border protection and market intervention measures.

### Some problems with the current trade policy implementation:
- Quantity limits under TRQ regimes: fixed shares between EU trade regions leading to different fill rates and different applied tariff rates
- Variable tariff rates depending on entry price system are not always homogenous over EU
- Public intervention might be triggered/non-active in different EU regions
- Export subsidies are distributed a-priori => underestimated commitments

## Policy blocks (cntnd.)

### Implications/requirements to the new layer
- Public intervention is triggered at EU level: total amount of stock change at EU level, distribution based on relative prices
- Variable tariff rates are defined at the level of policy blocks (including TRQ functions and entry price system).
    - distribution of TRQs is completely flexible
    - flexible levy is calculated for policy blocks (=> directly linked to import prices)
- "Aggregator functions" for calculating average market price and transport cost, aggregating trade flows at policy block level
- Market balances did not change (RMS regions)
- Armington system for trade is untouched 
- The new layer is optional, i.e. switch on/off possibility


## Technical implementation

- Technically the changes in the market model include:
    - New variables, Additional equations in the model definition
    - Extended code for (1) data preparation (2) market initialization routines (prep_market.gms) (3) steering simulation behavour (simu_market.gms) and (4) reporting results (including GUI)
- Model size increased to ~77 thousand equation/variable pairs
- Solution time did not increase dramatically


## Policy blocks (practical comments)

- Requires a re-calibration of CAPRI
- Advantage: easy harmonization of trade policy instruments (preferential, MFN tariff rates, etc.) across EU regions

### Limitations

- Calibration points are different with/without policy blocks
- => results can not be compared directly to the reference scenario without pol. blocks


## Regional hierarchy in the market model

------------------------------------------------------------------------------
Define what?                Code     Description
-------------------------   -------  -----------------------------------------
trade policies              RMTP     policy block
(tariffs, TRQ, ...)
 
bilateral trade             RM       trade regions
 
supply/demand quantites     RMS      regions with behavioral representation
biofuels, land supply
processing
  
young animals market        RMSSUP   countries covered by the supply models
model                                          
------------------------------------------------------------------------------


## Regional hierarchy in the market model

\centerline{\includegraphics[height=1.5in]{figure/regional_hierarchy.png}}


## Tariff rate quotas

------------------------------------------------------------------------------
 Policy blocks   TRQ system                                            
---------------  ---------------------------------------------------------
 OFF             A-priori allocation of quotas and thresholds.          
                 EU quota $\Rightarrow$ EU15, EU_EAST, BUR.                        
                 Possibly different fill rates and applied tariff rates

 ON              Quota allocated freely by the solver.                  
                 Fill rate and applied tariff rate are defined at the  
                 EU level only (unique)                                 
------------------------------------------------------------------------------




## Public intervention


------------------------------------------------------------------------------
 Policy blocks   Public intervention
---------------  ---------------------------------------------------------
 OFF             Intervention is triggered (or not) separately in EU trade 
                 regions (EU15, EU_EAST and BUR prices might differ).

 ON              (1) Intervention is triggered at the EU level
                 (2) Intervention purchases/sales transmitted  to trade regions
                 $$
                    log(s_i)=\varepsilon_i log(p_i) + c_i
                 $$
                 shares $(s_i)$ depending on relative prices $(p_i)$
------------------------------------------------------------------------------


## Entry price system for fruits and vegs. (EU)


------------------------------------------------------------------------------
 Policy blocks   Entry price system
---------------  ---------------------------------------------------------
 OFF             Triggered for trade regions (EU15, EU_EAST, BUR) separately
                 $\Rightarrow$ might define different applied tariff rates

 ON              Triggered at the EU level[^1] $\Rightarrow$ uniform tariff rate
                 applied.
------------------------------------------------------------------------------


[^1]: An average market price is defined over ARM1 quantities


## Export subsidies (subject to WTO commitments)

------------------------------------------------------------------------------
 Policy blocks   Subsidized exports
---------------  ---------------------------------------------------------
 OFF             Maximum commitments a priori distributed across EU trade 
                 regions. Triggered by market prices in trade regions (against
                 the same
                 administrative price).

 ON              EU commitments freely distributed by the solver. Triggered by
                 an average EU market price
------------------------------------------------------------------------------




# Endogenous price transmission from EU to member state level
## Part III. Endogenous price margins

- Motivation (objective): different price development by member states in scenarios

\centerline{\includegraphics[height=3in]{figure/price_trans.png}}


## Price transmission (markets to producer/consumer prices)

### Current price transmission in CAPRI
- $P_{import}^i = (1+t_{AV}) (P_M + tr) + t_{spec} - s_{export}, \forall i$
- $P_{ARM2} = f(P_{import}^i)$
- $P_{ARM1} = f(P_{ARM2},P_{DOM})$
- $P_{consumer} =  P_{ARM1} + margin + cons.taxes - subsidies$
- $P_{producer} =  margin * P_M + subsidies$


## Make the margins endogenous

- Factor in the changes in 'net trade' in the multiplicative margins => make it endogenous
$$
  P_M^i = P_M \cdot g_i(NT_i) + h_i(NT_i), \forall i
$$
where $g$ is a sigmoid function
$$
  g(NT_i) = \eta_i + \psi_i \cdot sign(NT_i) |x|^{\rho_i}
$$
- Net trade is from numerical reasons replaced with an index:
$$
  TI_i = \frac{NT_i}{S_i+D_i} = \frac{X_i-M_i}{S_i+D_i} = \frac{S_i-D_i}{S_i+D_i} \in (-1,1)
$$


## Endogenous margins (sigmoid)

\centerline{\includegraphics[height=2in]{figure/sigmoid_transmission.png}}

- Estimated with an Atuoregressive Distributed Lag model
- Data is from DG Agri, montly commodity prices

## Diverging price developments for member states

\centerline{\includegraphics[height=3in]{figure/endogenous.png}}





# CGE-style market model template
## Part IV. CGE-style market model

Motivation

- Integrate resource competition (land, irrigation water ..) in market model (otherwise difficult when based on profit function approach)
- Parameterization of supply elasticities difficult in long-term analysis (also in mid-term lack of input data on elasticities, lack of estimation capacities)
- Changes in factor productivity is hard to incorporate in standard dual approaches


Approach

- CES-type supply functins, CET nest for supply in the market model (typical in CGE models)




## CET supply nest

\centerline{\includegraphics[height=2.5in]{figure/CET_nest_CAPRI.png}}

###
- Primary factors within the value added nest
- Intermediate inputs are broken down to categories (Leontief)
- Within intermediate input categories, substitution (CET)


\note{Examples related to the CET nest

- Crop yields do not depend on a fixed output coefficient but rather reacts on the relative price changes between the value added and intermediates.
- Assume e.g. increasing land rents. If the substitution between the value added nest is not zero $\Rightarrow$ substition of land with other primary factors (e.g. capital) $\Rightarrow$ overall yield effect throught the CET nest


- The CET nest of raw milk applies zero transformation elasticities (Leontief technology) to produce fat and protein (fix proportion)

- CET nests are formulated with a combination of group price indexes (composite price index) and CET share equations
- Those are the FOCs of the dual (cost minimization) problem
- The current specification is of constant returns to scale

}

## CET supply nest (contnd.)

- Intermediate inputs: 
    - agircultural primaries
    - feed (output of the feed industry)
    - fat and protein content of milk (input to dairy industry)
    - rest (other remaining)
- E.g. for Feed, each animal process has its own Leontief coefficient (feed compound use in fix proportion), but (!) the composition of the feed can change due to the substitution between individual feed items


## CET supply nest (contnd.)

- Factor markets cover five primary factors represented in GTAP
    - land, capital, skilled- and unskilled labor, natural resources
- Industries at the top nest (9):
    - arable cropping, grasland, permanent crops
    - dairy, oilseed crushing, aquaculture
    - feed industry
    - food processing
    - rest
- Industries can be further broken down, e.g. arable => cereals, oilseeds, fodder, ...

## CET supply nest (contnd.)

Three market clearing mechanisms:

- Armington type for tradables (commodity balances vs. individual market prices)
- For non-tradables: producer price paired with market balances (net trade fixed)
- World market clearing: world market prices paired with net trade balance (default for residual sectors


## CGE-style market model (cntnd.)

Data

- GTAP v. 8.0
- Mapping between more aggregated GTAP sectors into CAPRI products


Still to be implemented:

- Linking trade costs to producing industries, necessary to consistenly captures all costs from a GE perspective.
- Income is only based on primary factor remuneration: taxes and tariffs are not considered and the balance of trade / account balance is not yet reflected => no consistent macro closure
- Bio-Fuel processing not yet included and the sugar market is switched off (unclear how to model in GE settings the A,B,C markets.


For more details see __cge_mrkModel.gms__
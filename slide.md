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

# Market model features (in general)
## Market model features (in general)

- Multi-market, multi-commodity model; comparative static
- Quasi-welfare maximization, sum of producer and consumer surplus (FOCs define supply/demand) functions
- Calibration guarantees consistency with micro theory 
    - e.g. correct curvature and homogeneity conditions
    - flexible functional forms for demand (Generalized Leontief)    
    - 'elasticity calibration' for the supply functions


## Market model features (trade)

- Armington assumption to depict bilateral trade flows
      - no 'world price' as in typical net trade models
      - goods are heterogenous (by place of origin)
      - both export and import are possible in the same trade direction
      - enherited small share problem (small trade flows remain small)
      - zero trade issue
      - nested CES approach (2 levels) linked to the GL demand system
- Trade policies implemented
      - specific and ad valorem tariffs, flexible levy system
      - entry price system for fruits and vegs
      - tariff rate quotas (TRQ)
      - public intervention, export subsidies

 
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
- Explicit land supply curve based on land rents
- Land use balance close the system (shadow price --> land rent)
- Other primary factors such as capital and labor are omitted (kept constant)       



## So what can you expect from an FTA simulation?

- Detailed representation of trade policies (e.g. tariff schedule)
- (Also impact of EU domestic policies on trade), see Mittenzwei et al. (2014): *Does the "green box" of the European Union distort global markets?*
- Obvious need for aggregation over tariff lines
- Impact on commodity balances, bilateral trade, welfare accounting
- Regional impacts: EU --> member states --> NUTS2 --> farm types
- A wide range of secondary effects: land use, feed use, input costs, etc.
- That allows identifying vulnerable regions, production systems, farm types...
- ... and opportunities to expand


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


# Policy Blocks in the market model
## Part II. Policy blocks

- Requires a re-calibration of CAPRI

- Advantage: easy harmonization of trade policy instruments (preferential, MFN tariff rates, etc.) across EU regions

Limitations

- Calibration points are different with/without policy blocks
- => results can not be compared to the same reference scenario


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

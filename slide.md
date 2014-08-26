# Trade Liberalization Session


## Trade Liberalization Session

What you can expect from the CAPRI market model

- Small recap on market model features -- their impact on FTA simulations


Recent developments in the market model:

1. FAO data in the global database (__'new global'__ option)
2. __Policy blocks__ -- a new geographical layer in the market model
3. Price transmission from EU to member state level -- __endogenous price margins__

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

Commodity balances
\centerline{\includegraphics[height=2.5in]{figure/FAO_commbalances.png}}


## What do we use from FAOSTAT?

Trade balances
\centerline{\includegraphics[height=2.5in]{figure/FAO_trade.png}}


## What do we use from FAOSTAT?

Production statistics
\centerline{\includegraphics[height=2.5in]{figure/FAO_production.png}}

## What do we use from FAOSTAT?

Land use
\centerline{\includegraphics[height=2.5in]{figure/FAO_landuse.png}}

## What do we use from FAOSTAT?

Trade matrix
\centerline{\includegraphics[height=2in]{figure/trade_matrix.png}}


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

## Trade policies with 'policy blocks' option set to ON

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



## Trade policies with 'policy blocks' option set to ON


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
------------------------------------------------------------------------------


## Trade policies with 'policy blocks' option set to ON


------------------------------------------------------------------------------
 Policy blocks   Entry price system
---------------  ---------------------------------------------------------
 OFF             Triggered for trade regions (EU15, EU_EAST, BUR) separately
                 $\Rightarrow$ might define different applied tariff rates

 ON              Triggered at the EU level[^1] $\Rightarrow$ uniform tariff rate
                 applied.
------------------------------------------------------------------------------


[^1]: An average market price is defined over ARM1 quantities


## Trade policies with 'policy blocks' option set to ON

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

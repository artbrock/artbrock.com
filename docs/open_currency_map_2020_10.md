# Currency   
  Design   
  Decisions


## Currency TOKEN Life-Cycle 

### Token Life Cycle Diagram

- [http://LifebloodDesign.com/currencymap/Currency_Life_Cycle.png](http://lifeblooddesign.com/currencymap/Currency_Life_Cycle.png)

### Issuance

- Type

	- Mutual Credit (created with a credit and offsetting debit)

	- Backed (credited based on another credit or commodity - e.g. dollars deposited to purchase Berkshares)

		- Partially Backed

		- Reserve Requirements

	- Fiat (only credited, no offset)

	- Meta-Currency (non-credited, solely derived from other currencies - e.g. Dow Jones Index)

- Means

	- Issuer Promise

		- Secured

		- Unsecured

	- Recipient Promise

		- Secured

		- Unsecured

	- Triggered Event / Conditional

	- Arbitrary

- Authority

	- Centralized (one participant class can issue)

		- Authorized User or Class

	- Selective (some participant classes can issue, some can't)

		- Authorized Class(es)

	- Fully-Distributed (all participants can issue)

### Transactions

- Circulation

	- Freely Circulating (most monetary currencies)

	- Non-Transferable (most reputation currencies)

	- Controlled Transfer (certain people or conditions required. Think stock brokers or estates)

		- Authorized participant class(es)

		- Conditions for transfer

	- Approved Transfer (approval required for all transfers - e.g. private stock or LLC membership)

		- Approval workflow

- Media

	- Tokens / Coins / Bills

		- Anti-Counterfeiting Measures

			- Precious metal standards, weights, alloys

			- Serialization /  Bar Codes / QR Codes

			- Rare Material (specialized paper, etc.)

			- Watermarking

			- Entaglio Printing / Microprinting

			- Holograms

			- Security Stripes

	- Vouchers / Checks /  Certificates

		- (see above anti-counterfeiting measures)

			- Magnetic Ink / Character Recognition

		- assignable (as in writing a check TO somebody)

		- endorsement requirements

		- re-assignability options

	- Smart Cards

		- Anti-Counterfeiting

			- encrypted data, PINs, public/private keys

	- Voice / DTMF Phone call

		- CallerID authentication, passwords, Account#s, PINs

	- Portable Device

		- Cell Phone

		- Handheld

	- Paper Ledgers / Passbooks

		- Serialized

	- Digital Bits

		- Proprietary Network (e.g. Visa, Amex, etc.)

		- Open Network (web / Internet / email / messaging)

			- Authentication Methods

				- certs, keys, PINs, passwords, etc.

		- Account ID / Swipe Cards

			- Anti-Counterfeiting Measures

				- Holograms

		- Electronic Accounting

			- [See Accounting Methods]

- Types

	- must complete   
	  for each transaction   
	  type below

		- Commissionable?

		- Roles

			- Single Party

				- Role Name

			- Dual Party

				- Role 1 Name

				- Role 2 Name

			- Multi-Party

				- Role Names X, Y, Z, P, D, Q (e.g. buyer, seller, buyer's broker, seller's broker)

		- Operation

			- Credit only - Entity A gets B of Currency C

			- Credit & Debit - Transfer Currency C from X to Y

				- Balance pre-authorization requirements?

			- Multiple Credits / Multiple Debits

				- Certain Roles Receiving Fixed Amounts

				- ...Receiving Fixed Percentages

			- Debit only - Entity A loses B of C

			- Rating (numeric but not +/-)

			- Multiplicative (Non-Debit/Credit)

		- Transaction Permissions

			- Pre-Validate Availability of "funds"

				- Earmark to "hold" funds

			- Conditions Required

				- Validation requirements

			- Approvals Required

		- Authorization Requirements

			- None

			- Single Party Authentication

			- Single Party Password / PIN

			- Dual Party Password / PIN

		- Immediacy

			- Immediate Transfer

			- Scheduled Transfer

			- Hold in Escrow

			- Release from Escrow

			- Payment Period (like for loans)

			- Recurring Payment Schedule (like for loans)

		- Transparency (who can   
		  see the transaction data)

			- Transaction Amount

				- Select, Admins, Partipating Parties, Specific Participant Classes, All Classes, Public

			- Transaction Date

				- Select, Admins, Partipating Parties, Specific Participant Classes, All Classes, Public

			- Transaction Description

				- Select, Admins, Partipating Parties, Specific Participant Classes, All Classes, Public

			- Transaction Parties & Roles

				- Select, Admins, Partipating Parties, Specific Participant Classes, All Classes, Public

			- Aggregated Data

				- Select, Admins, Partipating Parties, Specific Participant Classes, All Classes, Public

		- Limits

			- For each Role / Participant Class

				- min. amt., max. amt., frequency limit, # of transactions, # trans per cycle, amt. per cycle, total lifetime #

			- Per relationship limit

				- e.g. Each user can have one (and only one) rating in reputation currency N for each entity

		- Fees

			- Time Period Usage Fees

				- Paid by which roles

			- Per Transaction Fees

				- Fixed Amount, Percent or Amount + Percent

					- paid by which role(s)

				- Formulaic (custom formula)

					- paid by which role(s)

		- Tax Consequences   
		  (required reporting for   
		  most trade networks)

			- Sales Tax?

			- Income Tax?

			- VAT?

			- Deductable?

	- Gift

	- Donation

	- Loan

	- Rating

	- Praise

	- Reproach

	- Rebate

	- Discount / Coupon

	- Interest / Demmurage

	- Fee (membership, transaction, others)

	- Purchase (possible sub-types: Retail, Wholesale, Hard Goods, Soft Goods, Service)

	- State Change (see Life Cycle - Conversion)

	- other transaction types...

- Composition Constraints

	- Just this single currency

	- Other Allowed Currencies

		- Currency Minimums (e.g. min. 50% in dollars)

		- Currency Maximums

		- Percentages Allowed of each

- Auto Compounding

	- Time-Cycle

		- # of years/months/weeks/days/hours

	- Rate

		- for Positive Balances

		- for Negative Balances

- Accounting Method

	- Single-Entry

	- Double-Entry

	- Triple-Entry (double plus digitally signed transaction receipt)

		- Signed Chains (Intrinsic Data Integrity)

		- Signed Block Chains (e.g. bitcoin)

- Audit Requirements

	- No audit trail

	- Adjustments require reversing or adjusting entries

	- Adjustments must be authorized by all parties effected

	- Adjustments must be digitally signed by all parties effected

- Thresholds

	- Named

		- e.g. think white belt, yellow belt, green, orange, brown, black, etc.

		- Employee of the Month

		- Bachelors, Masters, Phd

	- Ranked

		- Gold, Silver Bronze Medals

		- Top X %

	- Numerical

- Triggered Events

	- Time Triggers

		- Calendar Time

			- Annual, Day of Year, Semi-Annual, Quarterly,   
			  Monthly, Day of Month, Weekly, Day of Week,   
			  Daily, Hour of Day, Minute of Hour 

		- Elapsed Time

			- 90 days, 30 days, 24 hours, etc.

	- Internal Condition/Trigger

	- External Condition/Trigger

### Conversion or Co-Function

- Conversion Limits

	- Currency 1

		- Cumulative Conversion Cap

		- Caps for Participant Class

			- Class 1

				- Per Transaction

				- Per User per Period/Cycle

				- Per User Cumulative Limit

				- Total Limit for Participant Class

			- ... Class n

	- ...Currency n

- Conversion Method

	- Blended Conversion

- Co-Functionality

	- Parallel Reputation Currency

		- Example: Credit Ratings are a reputation currency   
		  which operate in parallel with dollars. This Co-Functioning  
		  rating determines a users cost and availability of dollars.   
		  (i.e. credit limits, interest rates, transaction fees, etc.)

	- Combined Thresholds

		- Example: You get a college degree (reputation currency issued by   
		  University) by fulfilling degree requirements through credits (unit of account   
		  currency issued by departrments) which only count if you received an   
		  adequate grade (performance metric currency issued by professors)

### Retirement

- Methods

	- Repayment / Zeroed Balance

	- Attrition / Degradation

		- (It is often smart to include methods for reclaiming value of leakage / lost currency units)

	- Redemption

		- Requirements

			- Min. Amount

			- Min. Thresholds (based on another currency...like repuation)

		- Limits

			- Max. Amount

				- Per Participant Class

				- Per User

				- Per Time Cycle

			- 

		- Rate

			- Discounted Backing

			- Blended

	- Expiration

		- Calendar Date

		- Elapsed Period

		- Inactivity Period

	- Triggered Event

	- Persistent / Non-Retiring

- I still have to finish conversion   
  & retirment sections.

## Currency SYSTEM Life-Cycle 

### System Life Cycle Diagram

- [http://LifebloodDesign.com/currencymap/Currency_System_Life_Cycle.png](http://lifeblooddesign.com/currencymap/Currency_System_Life_Cycle.png)

### Conceive  
  & Design

- Targeted Issue or Problem to be Addressed

- Targeted Community of Users (early adopters w/ shared values)

- Intentions/Purpose

	- Desired flows to catalyze

	- Indicators of flow

	- Currency Complex   
	  (A currency COMPLEX   
	  contains a set of multiple   
	  inter-related currencies --  
	  like dollars + credit ratings)

		- Currency System Name

		- Currency 1

			- Name

			- Description

			- Formalization Method

				- Nominal / Named Threshold - e.g. Bachelors/Masters/Ph.D

				- Ordinal / Ranked - e.g. Gold/Silver/Bronze medalists

				- Interval / Whole Units - e.g. FF miles, Buy 9 get 10th free card

				- Rational / Divisible Parts - e.g. dollars/cents/fractional interest rates

			- Currency Symbol

				- Display format (e.g. USD $X,XXX.00)

			- Intended Role

				- Commercial Exchange

				- Gift Economy / Non-Commercial Exchange

				- Incentive / Reward / Penalty

				- Trust / Reputation / Status

				- Measure

			- Intended Users

				- Target Demographics

					- Targeted Messaging to those Groups

				- Participant Classes

					- Definition (must be completed   
					  for each valid participant class)

						- Name of Class

						- Description (Definitiion, Role & Purpose of class)

						- Participant Type

							- Any Individual

							- Qualified Individual

								- Qualification Criteria

							- Any Business

							- Qualified Business

								- Qualification Criteria

							- Any Community / Association / Non-Profit

							- Qualified Comm / Assoc / NPO

								- Qualification Criteria

							- Governmental Body

						- Activation Triggers

							- under what conditions might someone automatically become a member of this class

						- Termination Triggers

							- under what conditions might someones membership be terminated in this class

						- Membership Fees

							- Time Period

							- Fee Amount

								- Valid currencies for payment & percentages

						- Referral Bonus

							- for signing up a new member of this class

						- Balance Calculation

							- [See Formalization Method]

							- Summation

							- Average

							- Bounded Average

								- Time Boundary

								- Upper / Lower Bounds

							- Multiplicative

							- SumProduct

							- Ratio

							- Percent of Target

							- Current Rank

							- Percentile Rank

							- Name (by named threshold levels)

								- includes True/False, On/Off conditions

							- Custom Formula

						- Balance Transparency

							- Classes who can see current balance of a user

								- All

								- Selective

								- None

						- Interest Rate

							- Derived from a formula

						- Demurrage Rate

							- Derived from a formula

						- Starting Balance

						- Maximum Balance

						- Initial Credit Limit

						- Maximum Credit Limit

						- Formula for Moving Credit Limit (bounded by Initial and Max above)

						- Currency Issuer? (can put new currency into circulation)

						- Currency Redeemer? (can take currency out of circulation)

					- Individuals

					- Businesses

						- Employee Sub-Accounts / Expense Accounts

							- Default Spending Policies

							- Default Limits

							- Individual Policies

							- Individual Limits

					- Members

					- Non-Profits

						- Employee Sub-Accounts / Expense Accounts

					- Communities

					- Governments

						- Employee Sub-Accounts / Expense Accounts

					- "Foreign" Currencies (conversion accounts)

					- Other Custom Classes

			- Supply

				- Scarce (supply below demand)

				- Sufficient (available on demand)

				- Abundant (supply greater than demand)

				- Other (uncorrelated to demand)

			- Functions

				- Unit of Account

				- Medium of Exchange

					- Liquidity Enhancers

						- Convertible to other Currencies

						- High Value / Anchor Vendors

						- Tax Payment

						- Legal Tender

						- (Near) Universal Acceptance

				- Store of Value

				- Token of Status

				- Performance Metric

			- Value Reference

				- Other Currency (dollars, etc.)

				- Unit of time (e.g. hours)

				- Measurable Quantity (oz. of gold, barrels of oil, kilowatts of electricity, etc.)

				- Basket (specific combination of above items)

			- Redundancy Requirements

				- Centrally hosted / managed

				- Mirrored

				- Fully Distributed

		- Currency 2

			- (same sub-sections as above)

		- ...Currency n

			- (same sub-sections as above for each additional currency)

- Outcomes / Goal / End Game

	- Shut Down Conditions

		- e.g. A currency used for temporary funding

	- Shut Down Process

### Build

- Who is originating/sponsoring the currency project

	- Individual

	- Community

	- Corporation

	- NPO / NGO

	- Government

- Establish Key Partnerships

	- Needed for Credibility

		- Examples

			- Local Foundation

			- Community Leaders

			- Anchor Businesses

			- Local Banks/Credit Union

			- State/Local Agencies

	- Needed for Resources

		- 501c3 fiscal sponsor

		- Funding Sources

	- Needed for Execution

		- Groups w/ access to your targeted users

- Resources & Funding

- Infrastructure

### Launch

- Marketing & Message

- Outreach & Registration

- Adoption Assistance

### Manage  
  & Govern

- Decision Making Methodology

- Stakeholder Involvment

- Financial Viability

	- Sustainable Revenue

		- for Infrastructure

		- for Adequate Staffing

- Refinement of Currency Design

	- Committee/Team

		- Transparent Meetings/Communications

		- Closed Meetings/Communications (if needed)

	- Evaluation Process

		- Measurement of Metrics & Targets

		- Evaluation of Impact

		- Refinement of Metrics, Targets & Criteria

	- Redesign Cycles

		- New Plans / Designs

		- Re-Building

		- Relaunching / Re-educating

- Holding Vision & Purpose

### Terminate

- Acknowledge Conditions

	- Success

		- Currency accomplish desired results

			- Goals met

			- Timeline Complete

			- Flow Patterns Established

	- Collapse

		- Unable to sustain infrastructure

		- Unable to sustain staff / support

		- Loss of Leadership (schism, split, loss of focus)

		- Shut down by outside agency

	- Failure

		- Currency is not & will not meet desired goals

- Communicate with Stakeholders

- Fulfill Obligations


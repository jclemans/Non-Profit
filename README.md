Non Profit Donations using Stripe API
=====================================

Summary
-------
The goal of this project is to build a site where users can choose non-profits to make donations to. This is our first attempt at using the Stripe API and building a payment acceptance system.

Features
--------
####Complete:
* Create CRUD/L functionality for non-profits. No user auth or images yet.

* Let users choose a non-profit to donate to. To do this, use the Stripe API.

####To Do:

* Non-profits want the option to have their donors opt for monthly donations. Use Stripe subscriptions to bill their card for $15 per month if they choose monthly donations.

* Not everyone wants to donate $15/month. Let non-profits create different donation tiers by adding subscriptions. Hint: A non-profit has many subscriptions.

* Finally, we need to actually pay out to the non-profits. Use Stripe transfers to pay out the donations to the non-profits.

* Add user auth

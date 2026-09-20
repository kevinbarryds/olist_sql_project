# Olist SQL Project

Hands-on SQL practice and portfolio analysis on the Olist Brazilian
e-commerce dataset (SQLite version, 11 related tables): joins, subqueries,
CTEs, and window functions.

## Dataset

Source: [Olist E-Commerce Dataset as an SQLite Database (Kaggle)](https://www.kaggle.com/datasets/terencicp/e-commerce-dataset-by-olist-as-an-sqlite-database)

The database file is not stored in this repo. To reproduce:

1. Download the dataset from the Kaggle link above.
2. Place the `.sqlite` file in a local `data/` folder (git-ignored).
3. Open it in DBeaver, DataGrip, or the `sqlite3` CLI.

## Schema

See [docs/olist_erd.png](docs/olist_erd.png).

Core chain: `customers` → `orders` → `order_items` → `products` →
`product_category_name_translation`. `order_payments` and `order_reviews`
hang off `orders`; `sellers` joins to `order_items`. The marketing funnel
(`leads_qualified` → `leads_closed` → `sellers`) connects leads to orders.

## Join traps

(Add each one as you hit it.)

- `customer_id` is per order; `customer_unique_id` identifies the person.
- One order has many items, payments, and reviews, so joining them together
  inflates totals (fan-out).
- `order_items` is keyed on `order_id` + `order_item_id`.
- `geolocation` has many rows per zip prefix.

## Queries

| File | Topic |
|---|---|
| `queries/01_joins.sql` | Inner/left joins, multi-table chains, anti/semi-joins, self-joins |
| `queries/02_subqueries_ctes.sql` | Scalar, IN/EXISTS, correlated subqueries; CTE rewrites |
| `queries/03_window_functions.sql` | ROW_NUMBER, RANK, LAG/LEAD, running totals |

## Status

In progress. Started September 2026.

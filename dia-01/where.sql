-- Databricks notebook source
SELECT *

FROM silver_olist.pedido

WHERE descSituacao = 'canceled'

-- COMMAND ----------

SELECT *

FROM silver_olist.pedido

WHERE (descSituacao = 'shipped' OR descSituacao = 'canceled')
AND year(dtPedido) = '2018'

-- COMMAND ----------

SELECT *

FROM silver_olist.pedido

WHERE descSituacao IN ('shipped', 'canceled')
AND year(dtPedido) = '2018'

-- COMMAND ----------

SELECT *

FROM silver_olist.pedido

WHERE descSituacao IN ('shipped', 'canceled')
AND year(dtPedido) = '2018' 
AND datediff(dtEstimativaEntrega, dtAprovado) > 30

-- COMMAND ----------



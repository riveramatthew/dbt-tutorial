{% snapshot mock_orders %}

{% set new_schema = target.schema + '_snapshot' %}

{{
    config(
      target_database='summer-rope-330420',
      target_schema=new_schema,
      unique_key='order_id',

      strategy='timestamp',
      updated_at='updated_at',
    )
}}

select * from summer-rope-330420.{{target.schema}}.mock_orders

{% endsnapshot %}
	
	
 SELECT ope_identifiant,lot_identifiant,ope_date_debut,ope_date_fin,ope_dic_identifiant,lot_tax_code,lot_std_code,CASE WHEN lot_effectif is not NULL then lot_effectif  WHEN lot_effectif is null then lot_quantite end as value,case when lot_effectif is not NULL  then 'effectif' when lot_effectif is null and lot_qte_code='1' then 'poids' when lot_effectif is null and 
 lot_qte_code='2' then 'volume' else 'quantite' end as type_de_quantite,
 lot_dev_code, lot_methode_obtention FROM iav.t_operation_ope 
 JOIN iav.t_lot_lot on lot_ope_identifiant=ope_identifiant 
 WHERE (ope_date_debut, ope_date_fin) 
 overlaps ('2023-10-01'::timestamp without time zone, '2023-11-30 23:59:59'::timestamp without time zone)   AND ope_dic_identifiant in('6','12') 
 AND lot_tax_code in ('2038') 
 AND lot_std_code in ('AGJ') 
 AND lot_lot_identifiant IS NULL  ;
 
 
SELECT ope_identifiant,lot_identifiant,ope_date_debut,ope_date_fin,ope_dic_identifiant,lot_tax_code,lot_std_code,CASE WHEN lot_effectif is not NULL then lot_effectif  WHEN lot_effectif is null then lot_quantite end as value,case when lot_effectif is not NULL  then 'effectif' when lot_effectif is null and lot_qte_code='1' then 'poids' when lot_effectif is null and 
 lot_qte_code='2' then 'volume' else 'quantite' end as type_de_quantite,
 lot_dev_code, lot_methode_obtention FROM iav.t_operation_ope 
 JOIN iav.t_lot_lot on lot_ope_identifiant=ope_identifiant 
 WHERE (ope_date_debut, ope_date_fin) 
 overlaps ('2023-09-11'::timestamp without time zone, '2023-09-14 23:59:59'::timestamp without time zone)  
 AND ope_dic_identifiant in('5') 
 AND lot_tax_code in ('2038') 
 AND lot_std_code in ('AGJ') 
 AND lot_lot_identifiant IS NULL  ;
 
 



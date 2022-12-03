			            
						
						
						SELECT distinct  schema_name(o.schema_id) ,
										 fg.name, 
									     p.partition_number ,
									     p.rows,
									     convert(varchar(10),rv.value,23)
						FROM sys.partitions p
						INNER JOIN sys.indexes i ON p.object_id = i.object_id AND p.index_id = i.index_id
						INNER JOIN sys.objects o ON p.object_id = o.object_id
						INNER JOIN sys.system_internals_allocation_units au ON p.partition_id = au.container_id
						INNER JOIN sys.partition_schemes ps ON ps.data_space_id = i.data_space_id
						INNER JOIN sys.partition_functions f ON f.function_id = ps.function_id
						INNER JOIN sys.destination_data_spaces dds ON dds.partition_scheme_id = ps.data_space_id AND dds.destination_id = p.partition_number
						INNER JOIN sys.filegroups fg ON dds.data_space_id = fg.data_space_id 
						LEFT OUTER JOIN sys.partition_range_values rv ON f.function_id = rv.function_id AND p.partition_number = rv.boundary_id 
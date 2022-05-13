def capitalize_name(lambda_name)
 lambda_name.call('laryssa')
 lambda_name.call('gabriel')
 lambda_name.call('victor')
end
 
lambda_name = -> (name) { puts name.capitalize }
 
capitalize_name(lambda_name)
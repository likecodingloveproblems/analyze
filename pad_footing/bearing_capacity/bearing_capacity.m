function func = bearing_capacity(method)
  switch method
    case 'vesic'
      func = @vesic
    otherwise
      error('Invalid operation: %s', operation);
  end
end

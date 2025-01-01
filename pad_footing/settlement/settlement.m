function func = settlement(method)
  switch method
    case 'poulos_davis'
      func = @poulos_davis
    otherwise
      error('Invalid operation: %s', operation);
  end
end

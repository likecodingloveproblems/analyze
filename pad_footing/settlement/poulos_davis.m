function delta = poulos_davis(B, L, E, v, F)
  % poulos and davis (1974)
  bz=-0.0017*(L/B)^2+0.0597*(L/B)+0.9843;
  delta=F*(1-v^2)/(bz*E*sqrt(B*L));
end


function [ maskedIndexThreat ] = maskThreatenedNodes( indexThreat, mask )
%Mask the threatened nodes so they correspond to the new island ordering
%internally

%Find rows that contain threatened nodes and take that as NODE ID for THIS island    
maskedIndexThreat = zeros(size(indexThreat,1),1);

for j = 1 : size(indexThreat,1),
    
    i = ismember(mask, indexThreat(j));
    maskedIndexThreat(j) = find(i(:,1) == 1);
end

end


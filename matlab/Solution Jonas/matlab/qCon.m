function [ qOut ] = qCon( qIn )

%function returns conjucgate

qOut = [qIn(1,:);-qIn(2,:);-qIn(3,:);-qIn(4,:)];

end


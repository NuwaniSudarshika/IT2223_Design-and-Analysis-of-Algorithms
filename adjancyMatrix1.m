%%write the MATLAB code to import a graph.Use the following sourse and
%%destination data
%%Using the importanted data, draw the graph
%%write the MATLAB code to find and display the subgraph for the given
%%nodes
%%Identify and display the adjacent verticesfor each node
%%Label the edges of the graph
%%Label the nodes of the graph
%%Write the MATLAB code to color the graph(graph coloring)
%%write the MATLAB code to find the shortest path from node 1 to node 5

%%source=[1,1,2,3,4]
%%destination = [2,3,4,4,5]

source = [1, 1, 2, 3, 4];
destination = [2, 3, 4, 4, 5];

%% Step 2: Create and plot the graph
G = graph(source, destination);
figure;
h = plot(G, 'LineWidth', 2);
title('Original Graph');

%% Step 3: Find and display subgraph for given nodes (e.g., nodes 2, 3, 4)
subNodes = [2, 3, 4];
subG = subgraph(G, subNodes);
figure;
plot(subG, 'LineWidth', 2);
title('Subgraph for nodes 2, 3, and 4');

%% Step 4: Identify and display adjacent vertices for each node
disp('Adjacent vertices for each node:');
for i = 1:numnodes(G)
    neighbors = neighbors(G, i);
    fprintf('Node %d is adjacent to: %s\n', i, num2str(neighbors'));
end

%% Step 5: Label the edges of the graph
labeledge(h, source, destination, 1:numedges(G));

%% Step 6: Label the nodes of the graph
labelnode(h, 1:numnodes(G), string(1:numnodes(G)));

%% Step 7: Graph coloring (greedy coloring using MATLAB logic)
colors = zeros(1, numnodes(G));
for i = 1:numnodes(G)
    neighborColors = colors(neighbors(G, i));
    color = 1;
    while any(neighborColors == color)
        color = color + 1;
    end
    colors(i) = color;
end

% Define color map for visualization
colorMap = lines(max(colors)); % lines() generates distinguishable colors
nodeColors = colorMap(colors, :);

figure;
hColor = plot(G, 'NodeCData', colors, 'MarkerSize', 7, 'LineWidth', 2);
colormap(colorMap);
colorbar;
title('Graph with Node Coloring');

%% Step 8: Find the shortest path from node 1 to node 5
[shortestPath, pathLength] = shortestpath(G, 1, 5);
fprintf('Shortest path from node 1 to node 5: %s\n', num2str(shortestPath));
fprintf('Path length: %d\n', pathLength);

% Highlight the shortest path on the graph
highlight(h, shortestPath, 'EdgeColor', 'red', 'LineWidth', 2);
highlight(h, shortestPath, 'NodeColor', 'green');

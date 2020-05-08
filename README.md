<h1>Stock Picker</h1>
<p>Taken from the Odin Project</p>

<h2>Analysis</h2>
<p>Looking at the overview of the problem, the safest way to avoid any problems chronologically would likely be to run a Monte Carlo simulation. </p>

<p>After some thinking, I think the best way to approach this problem is thru abstraction. Dividing the problem into a few problems, I can simplify my tasks to the following taks:</p>

<ol>
    <li>write a function that takes a starting price and ending price and returns the profit/loss</li>
    <li>write a function that simulates buying on every single day of the week and finds the best case scenario of each day</li>
    <li>compare the best case scenario for each day and return the final result as the answer</li>
</ol>


<script>
	let clicks = 0;
	function handleClick(){
		clicks += 1;
  }
</script>

<h1 id=text>Clicked {clicks} times</h1>

<button id=button on:click={handleClick}>
	Click Me!
</button>

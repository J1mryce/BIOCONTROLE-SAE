document.getElementById('graph-selector').addEventListener('change', function (e) {
  hideAll();
  const selectedGraph = e.target.value;
  document.getElementById(selectedGraph).style.display = 'block';
  document.querySelector(`#titre${selectedGraph[selectedGraph.length - 1]}`).style.display = 'block';
});

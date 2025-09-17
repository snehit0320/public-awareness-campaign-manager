// Demo chart on dashboard
if (document.getElementById('reachChart')) {
  new Chart(document.getElementById('reachChart'), {
    type: 'bar',
    data: {
      labels: ['SMS','Email','Social','Hotline'],
      datasets: [{ label: 'Reach (k)', data: [120, 220, 340, 90] }]
    }
  });
}

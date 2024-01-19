// Fetch chart data from your backend server
fetch('/api/redis/data')
    .then(response => response.json())
    .then(data => {
        // Assuming 'data' is in the format required by Chart.js
        // Example: { labels: ['Red', 'Blue', 'Yellow'], datasets: [{ label: 'Votes', data: [12, 19, 3] }] }

        const ctx = document.getElementById('myChart').getContext('2d');
        const myChart = new Chart(ctx, {
            type: 'bar',
            data: data, // data received from the server
            options: {
                scales: {
                    y: {
                        beginAtZero: true
                    }
                }
            }
        });
    })
    .catch(error => console.error('Error fetching chart data:', error));

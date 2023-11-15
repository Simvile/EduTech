/* global bootstrap: false */
(() => {
    'use strict'
    const tooltipTriggerList = Array.from(document.querySelectorAll('[data-bs-toggle="tooltip"]'))
    tooltipTriggerList.forEach(tooltipTriggerEl => {
        new bootstrap.Tooltip(tooltipTriggerEl)
    })
})()


// Example data for the chart
var ctx = document.getElementById('myChart').getContext('2d');
var myChart = new Chart(ctx, {
    type: 'line', // Change chart type to line
    data: {
        labels: ['Enrolled Courses', 'Students'],
        datasets: [{
            label: 'Number of Students and Enrolled Courses',
            data: [50, 100], // Update with your actual data
            backgroundColor: [
                'rgba(255, 99, 132, 0.2)',
                'rgba(54, 162, 235, 0.2)',
            ],
            borderColor: [
                'rgba(255, 99, 132, 1)',
                'rgba(54, 162, 235, 1)',
            ],
            borderWidth: 1
        }]
    },
    options: {
        scales: {
            y: {
                beginAtZero: true
            }
        }
    }
});



function addRow() {
    // Add your logic to dynamically add rows to the table here
    var table = document.querySelector("table tbody");
    var newRow = table.insertRow(table.rows.length);
    var cell1 = newRow.insertCell(0);
    var cell2 = newRow.insertCell(1);
    var cell3 = newRow.insertCell(2);
    cell1.innerHTML = document.getElementById("courseMaterials").value;
    cell2.innerHTML = document.getElementById("courseVideos").value;
    cell3.innerHTML = document.getElementById("pastPapers").value;
}

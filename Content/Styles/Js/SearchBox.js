//================= Search Box =======================//
//====================================================//
document.getElementById("searchInput").addEventListener("input", function () {
    let filter = this.value.toLowerCase();
    let rows = document.getElementById("<%= DataList1.ClientID %>").getElementsByTagName("li");

    for (let row of rows) {
        let rowData = row.textContent.toLowerCase();
        if (rowData.includes(filter)) {
            row.style.display = "";
        } else {
            row.style.display = "none";
        }
    }
});

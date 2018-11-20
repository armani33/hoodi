function unhideForm(formType) {
    var form_div = document.getElementById(formType);
    if (form_div.style.display === "none") {
        form_div.style.display = "block";
    } else {
        form_div.style.display = "none";
    }
}

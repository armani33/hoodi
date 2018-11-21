function unhideForm(formType) {
    const allForms = document.querySelectorAll('.form');
    allForms.forEach((form) => {
    form.style.display = "none";
  });

    const selectedForm = document.getElementById(formType);
    selectedForm.style.display = "block";
}

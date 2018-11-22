const ageButton = document.getElementById('age-btn');
const ageFields = document.querySelectorAll('.hidden-age');
const perimeterButton = document.getElementById('perimeter-btn');
const perimeterField = document.getElementById('perimeter-field');


ageButton.addEventListener("click", function() {
  ageFields.forEach(function(field) {
    if (field.classList.contains("invisible"))
     {
        ageButton.classList.add("invisible")
        field.classList.remove("invisible");
     }
     else
     {
         field.classList.add("invisible");
     }
  });
});

function unhideForm(formType) {
    const allForms = document.querySelectorAll('.form');
    allForms.forEach((form) => {
    form.style.display = "none";
  });

    const selectedForm = document.getElementById(formType);
    selectedForm.style.display = "block";
}

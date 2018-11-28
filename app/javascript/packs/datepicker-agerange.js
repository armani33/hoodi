import "propellerkit-datetimepicker";
import * as noUiSlider from "nouislider";
import wNumb from "wnumb";

$("#datepicker").datetimepicker();

const pmdSliderRangeTooltip = document.getElementById('age-range');

noUiSlider.create(pmdSliderRangeTooltip, {
  start: [10, 50],
  connect: true,
  tooltips: [ wNumb({ decimals: 0 }), wNumb({ decimals: 0 }) ],
  range: {
    'min': 0,
    'max': 100
  }
});

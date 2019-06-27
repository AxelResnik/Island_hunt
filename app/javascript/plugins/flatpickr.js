import flatpickr from "flatpickr";
import "flatpickr/dist/flatpickr.min.css" // Note this is important!
import "flatpickr/dist/themes/dark.css" // A path to the theme CSS
// import rangePlugin from "flatpickr/dist/plugins/rangePlugin"


flatpickr(".datepicker", {
    altInput: true,
    // enableTime: true,
    // dateFormat: "Y-m-d H:i",
    minDate: "today",
    // plugins: [new rangePlugin({ input: "#end_date"})]
})

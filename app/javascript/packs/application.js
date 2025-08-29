// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"

import $ from 'jquery';
window.$ = $;
window.jQuery = $;

//import moment from 'moment';
//window.moment = moment;

import "bootstrap";

//import 'bootstrap-material-datetimepicker/css/bootstrap-material-datetimepicker.css';
//import 'bootstrap-material-datetimepicker/js/bootstrap-material-datetimepicker.js';
import "data-confirm-modal"

import "../stylesheets/application.scss";

Rails.start()
Turbolinks.start()
ActiveStorage.start()

//document.addEventListener('turbolinks:load', () => {
//  $('#schedule_start').bootstrapMaterialDatePicker({
//    format: 'YYYY-MM-DD HH:mm',
//    weekStart: 0,
//    time: true
//  });
//});

//document.addEventListener('turbolinks:load', () => {
//  $('#schedule_finish').bootstrapMaterialDatePicker({
//    format: 'YYYY-MM-DD HH:mm',
//    weekStart: 0,
//    time: true
//  });
//});

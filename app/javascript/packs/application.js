// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")
var jQuery = require("jquery")
global.$ = global.jQuery = jQuery;
window.$ = window.jQuery = jQuery;
require("bootstrap/dist/js/bootstrap")
require("simplebar/dist/simplebar.min.js");
require("material-design-kit/dist/material-design-kit.js");
import "../redactor/redactor";
import "../redactor/plugins/table/table";
import "../redactor/plugins/inlinestyle/inlinestyle";
import "../redactor/plugins/properties/properties";

// Self Initialize DOM Factory Components
var handler = require("dom-factory/dist/dom-factory.js").handler.autoInit();

// Connect button(s) to drawer(s)
var sidebarToggle = Array.prototype.slice.call(document.querySelectorAll('[data-toggle="sidebar"]'))

sidebarToggle.forEach(function (toggle) {
  toggle.addEventListener('click', function (e) {
    var selector = e.currentTarget.getAttribute('data-target') || '#default-drawer'
    var drawer = document.querySelector(selector)
    if (drawer) {
      drawer.mdkDrawer.toggle()
    }
  })
})


let drawers = document.querySelectorAll('.mdk-drawer')
drawers = Array.prototype.slice.call(drawers)
drawers.forEach((drawer) => {
  drawer.addEventListener('mdk-drawer-change', (e) => {
    if (!e.target.mdkDrawer) {
      return
    }
    document.querySelector('body').classList[e.target.mdkDrawer.opened ? 'add' : 'remove']('has-drawer-opened')
    let button = document.querySelector('[data-target="#' + e.target.id + '"]')
    if (button) {
      button.classList[e.target.mdkDrawer.opened ? 'add' : 'remove']('active')
    }
  })
})


// ENABLE TOOLTIPS, POPOVER, REDACTOR
document.addEventListener("turbolinks:load", () => {
  $('[data-toggle="tooltip"]').tooltip()
  $('[data-toggle="popover"]').popover()
  $R('.rich-text', { focus: true, plugins: ['table', 'inlinestyle', 'properties'] })
})
function setTheme() {
  // Default to dark mode
  if (!document.body.classList.contains("light")) {
    document.body.classList.remove("auto");
    document.body.classList.add("dark");
  }
}

function invertBody() {
  document.body.classList.toggle("dark");
  document.body.classList.toggle("light");
}

setTheme();

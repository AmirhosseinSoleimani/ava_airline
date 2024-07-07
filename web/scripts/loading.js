// web/scripts/loading.js

document.addEventListener('DOMContentLoaded', function () {
  const flutterApp = document.getElementById('flutterApp');
  const loadingScreen = document.getElementById('loading');

  // Initially hide the Flutter app
  if (flutterApp) {
    flutterApp.style.display = 'none';
  }

  // Show Flutter app and hide loading screen after a delay (for demonstration)
  setTimeout(function () {
    if (loadingScreen) {
      loadingScreen.style.display = 'none';
    }
    if (flutterApp) {
      flutterApp.style.display = 'block';
      flutterApp.style.animation = 'fadeIn 1s ease-in-out';
    }
  }, 5000); // 5-second delay
});

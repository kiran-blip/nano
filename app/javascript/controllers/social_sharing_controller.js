const modal = document.getElementById('social-sharing-modal');
const btn = document.getElementById('social-sharing-button');
const closeBtn = document.getElementsByClassName('close-button')[0];

modal.style.display = 'none';

btn.addEventListener('click', function() {
  modal.style.display = 'block';
});

closeBtn.addEventListener('click', function() {
  modal.style.display = 'none';
});

const minusButton = document.getElementById('btn-minus');
const plusButton = document.getElementById('btn-plus');
const valueSpan = document.getElementById('var-value');

let currentValue = parseInt(valueSpan.textContent);

minusButton.addEventListener('click', () => {
    if (currentValue > 0) {
        currentValue--;
        valueSpan.textContent = currentValue;
    }
});

plusButton.addEventListener('click', () => {
    currentValue++;
    valueSpan.textContent = currentValue;
});
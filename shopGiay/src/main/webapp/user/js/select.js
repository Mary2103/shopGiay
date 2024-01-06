
document.getElementById('sortingOptions').addEventListener('click', function(event) {
	// Lấy phần tử được click
	var selectedElement = event.target;

	// Kiểm tra nếu là một phần tử có thuộc tính data-value
	if (selectedElement.hasAttribute('data-value')) {
		// Lấy giá trị của thuộc tính data-value
		var selectedValue = selectedElement.getAttribute('data-value');

		// Truyền giá trị lên server (gọi servlet)
		if (selectedValue !== "0") {
			window.location.href = "SanPhamController?selectedValue=" + selectedValue;
		}
	}
});


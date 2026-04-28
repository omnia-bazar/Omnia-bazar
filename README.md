## Hi there 👋

<!--
**omnia-bazar/Omnia-bazar** is a ✨ _special_ ✨ repository because its `README.md` (this file) appears on your GitHub profile.

Here are some ideas to get you started:

- 🔭 I’m currently working on ...
- 🌱 I’m currently learning ...
- 👯 I’m looking to collaborate on ...
- 🤔 I’m looking for help with ...
- 💬 Ask me about ...
- 📫 How to reach me: ...
- 😄 Pronouns: ...
- ⚡ Fun fact: ...
-->
<!DOCTYPE html><html lang="es">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Omnia Bazar</title>
  <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-black text-white"><header class="p-5 flex justify-between items-center border-b border-gray-800">
  <h1 class="text-2xl font-bold tracking-widest">OMNIA BAZAR</h1>
</header><section class="text-center py-20 px-5">
  <h2 class="text-4xl font-bold mb-4">Todo en un solo lugar</h2>
</section><section id="productos" class="px-5 py-10 grid md:grid-cols-3 gap-6">
  <div class="bg-gray-900 p-5 rounded-2xl">
    <h3>Playera Urbana</h3>
    <button onclick="addToCart('Playera Urbana')" class="bg-yellow-500 px-4 py-2 mt-2">Agregar</button>
  </div>
  <div class="bg-gray-900 p-5 rounded-2xl">
    <h3>Collar</h3>
    <button onclick="addToCart('Collar')" class="bg-yellow-500 px-4 py-2 mt-2">Agregar</button>
  </div>
</section><section class="px-5 py-10">
  <h2>Carrito</h2>
  <ul id="cart"></ul>
  <button onclick="checkout()" class="bg-green-500 px-6 py-3 mt-4">Finalizar compra</button>
</section><section id="gracias" class="hidden text-center py-20">
  <h2 class="text-4xl">¡Gracias por tu compra! 🎉</h2>
  <p>Te contactaremos pronto.</p>
  <a id="whatsappBtn" target="_blank" class="bg-green-500 px-6 py-3 mt-4 inline-block">Enviar pedido por WhatsApp</a>
  <br><br>
  <button onclick="reloadPage()" class="bg-yellow-500 px-6 py-3">Volver</button>
</section><script>
let cartItems = [];

function addToCart(product) {
  cartItems.push(product);
  const cart = document.getElementById('cart');
  const item = document.createElement('li');
  item.textContent = product;
  cart.appendChild(item);
}

function checkout() {
  document.getElementById('productos').style.display = 'none';
  document.getElementById('gracias').classList.remove('hidden');

  let message = "Hola, quiero comprar: %0A" + cartItems.join('%0A');
  let url = "https://wa.me/526531464797?text=" + message;

  document.getElementById('whatsappBtn').href = url;
}

function reloadPage() {
  location.reload();
}
</script></body>
</html>

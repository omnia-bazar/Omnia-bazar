<!DOCTYPE html><html lang="es">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Omnia Bazar</title>
  <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-black text-white">  <!-- Header -->  <header class="p-5 flex justify-between items-center border-b border-gray-800">
    <h1 class="text-2xl font-bold tracking-widest">OMNIA BAZAR</h1>
    <nav class="space-x-4">
      <a href="#" class="hover:text-yellow-400">Inicio</a>
      <a href="#productos" class="hover:text-yellow-400">Productos</a>
      <a href="#contacto" class="hover:text-yellow-400">Contacto</a>
    </nav>
  </header>  <!-- Hero -->  <section class="text-center py-20 px-5">
    <h2 class="text-4xl md:text-6xl font-bold mb-4">Todo en un solo lugar</h2>
    <p class="text-gray-400 mb-6">Ropa • Accesorios • Muebles • Arte • Herramientas</p>
    <a href="#productos" class="bg-yellow-500 text-black px-6 py-3 rounded-xl font-semibold hover:bg-yellow-400">Explorar tienda</a>
  </section>  <!-- Productos -->  <section id="productos" class="px-5 py-10 grid grid-cols-1 md:grid-cols-3 gap-6"><div class="bg-gray-900 p-5 rounded-2xl">
  <img src="https://via.placeholder.com/300" class="rounded-xl mb-3">
  <h3 class="text-xl font-bold">Playera Urbana</h3>
  <p class="text-gray-400">$250 MXN</p>
  <button onclick="addToCart('Playera Urbana')" class="mt-3 bg-yellow-500 text-black px-4 py-2 rounded-lg">Agregar</button>
</div>

<div class="bg-gray-900 p-5 rounded-2xl">
  <img src="https://via.placeholder.com/300" class="rounded-xl mb-3">
  <h3 class="text-xl font-bold">Collar Minimalista</h3>
  <p class="text-gray-400">$180 MXN</p>
  <button onclick="addToCart('Collar')" class="mt-3 bg-yellow-500 text-black px-4 py-2 rounded-lg">Agregar</button>
</div>

<div class="bg-gray-900 p-5 rounded-2xl">
  <img src="https://via.placeholder.com/300" class="rounded-xl mb-3">
  <h3 class="text-xl font-bold">Silla Moderna</h3>
  <p class="text-gray-400">$1200 MXN</p>
  <button onclick="addToCart('Silla')" class="mt-3 bg-yellow-500 text-black px-4 py-2 rounded-lg">Agregar</button>
</div>

  </section>  <!-- Carrito simple -->  <section class="px-5 py-10">
    <h2 class="text-2xl font-bold mb-3">Carrito</h2>
    <ul id="cart" class="text-gray-400"></ul>
  </section>  <!-- Contacto -->  <section id="contacto" class="px-5 py-10 text-center">
    <h2 class="text-3xl font-bold mb-4">Contáctanos</h2>
    <a href="https://wa.me/526531464797" target="_blank" class="bg-green-500 px-6 py-3 rounded-xl text-black font-bold">WhatsApp</a>
    <p class="text-gray-400 mt-3">Instagram: @omniabazar</p>
  </section>  <!-- Footer -->  <footer class="text-center p-5 border-t border-gray-800 text-gray-500">
    © 2026 Omnia Bazar - Todos los derechos reservados
  </footer>  <script>
    function addToCart(product) {
      const cart = document.getElementById('cart');
      const item = document.createElement('li');
      item.textContent = product;
      cart.appendChild(item);
    }
  </script></body>
</html>

# 🍽️ Comidas Peruanas

Aplicación desarrollada en **Xcode con Swift** que presenta una variedad de recetas peruanas organizadas por tipo de comida: **desayunos, almuerzos y postres**.  
La app cuenta con una interfaz amigable que incluye navegación por menú, búsqueda de recetas, y una sección de favoritos.

---

## 📱 Características principales

### 🏠 Vista Principal

- Al iniciar la aplicación se muestra el **título "Comidas Peruanas"**.
- Aparecen **3 tarjetas** :
  - **Desayuno**
  - **Almuerzo**
  - **Postres**
- Al presionar cualquiera de estas tarjetas, se navega a una lista con todas las recetas correspondientes a esa categoría.

📷 _Imagen de la vista principal_  
![image](https://github.com/user-attachments/assets/91c9d8e1-b351-4869-b8d1-452ea404db9c)

---

### 📋 Listado de Recetas

- Se muestra una lista con:
  - **Nombre de la comida**
  - **Imagen**
  - **Ícono de corazón** ❤️ para marcar como favorita
- Al presionar una receta, se abre una vista con:
  - El **título**
  - La **imagen**
  - Los **ingredientes**
  - Si deslizas hacia la izquierda, verás las **instrucciones** para preparar la receta

📷 _Imagen de la lista de comidas_  
![image](https://github.com/user-attachments/assets/b8debd89-551b-4280-9267-2cb0aff39c37)

📷 _Imagen de detalle de receta con ingredientes_  
![image](https://github.com/user-attachments/assets/2a6ddc52-9945-4605-8247-a02ee9647578)

📷 _Imagen de detalle de receta con instrucciones_  
![image](https://github.com/user-attachments/assets/fdf37f6e-da88-4f3a-9999-3ce07ea5df6e)

---

### 🔍 Vista de Búsqueda

- Título: **Buscar comida**
- Barra de búsqueda vacía por defecto
- Si no hay texto en la barra, se muestran todas las recetas ordenadas alfabéticamente (independiente del tipo).
- Al escribir, se filtra por **nombre de la comida**.
- Cada resultado muestra:
  - Imagen
  - Nombre
  - Tipo de comida (desayuno, almuerzo, postre)
  - Ícono de corazón para marcar como favorita
- Al presionar una receta, se accede a la misma vista detallada con ingredientes e instrucciones.

📷 _Imagen de la vista de búsqueda (vacía)_  
![image](https://github.com/user-attachments/assets/624ba733-2a95-4011-9181-c5674162881a)

📷 _Imagen de resultados filtrados_  
![image](https://github.com/user-attachments/assets/2fff6417-eec6-4a07-867b-af00de902bfa)

---

### ❤️ Vista de Favoritos (Me Gusta)

- Título: **Favoritos**
- Si no hay recetas favoritas:
  - Mensaje: _"No tienes recetas favoritas"_
- Si hay recetas favoritas:
  - Se muestra:
    - Imagen
    - Nombre
    - Tipo de comida
    - Corazón rojo ❤️
    - Botón **"Ver detalles"**
- Al presionar el corazón:
  - Se pregunta si deseas eliminar de favoritos
  - Si confirmas, se elimina de la lista

📷 _Imagen sin recetas favoritas_  
![image](https://github.com/user-attachments/assets/9fc1025a-c10f-4836-9385-b18ae955f276)

📷 _Imagen con recetas favoritas_  
![image](https://github.com/user-attachments/assets/85495b03-b328-4351-92df-b53aff0cf09c)

📷 _Imagen eliminando una receta favorita_  
![image](https://github.com/user-attachments/assets/deb15edb-3437-405b-b9c4-97606f46137e)
![image](https://github.com/user-attachments/assets/40a56fa7-cec1-45ad-a324-637b6b94855d)


---

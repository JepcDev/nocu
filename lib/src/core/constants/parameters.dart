// parametros seran de tipo enum que podemos usarlo como cualquier tipo de estado para nuestros modelos

enum TypeNote {
  text,
  image,
  network,
  textImage,
  textNetWork,
  imageNetwork,
  textImageNetwork,
}

enum StateNote { visible, archive, delete }
enum StateTask { done, review, pastDate, create }

enum StatusNetwork { connected, noInternet, exception }

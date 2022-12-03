// parametros seran de tipo enum que podemos usarlo como cualquier tipo de estado para nuestros modelos

enum TypeNote {
  Text,
  Image,
  Network,
  TextImage,
  TextNetWork,
  ImageNetwork,
  TextImageNetwork
}

enum StateNote { Visible, Archive, Delete }
enum StateTask { Done, Review, PastDate, Create }

enum StatusNetwork { Connected, NoInternet, Exception }

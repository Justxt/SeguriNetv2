class Question {
  final String question;
  final List<String> options;
  final String correctAnswer;
  final String interestingFact;
  final String explanation;

  Question(this.question, this.options, this.correctAnswer, this.interestingFact, this.explanation);
}

final List<Question> childrenQuestions = [
  Question(
      '¿Qué debes hacer si un extraño te pide información personal en un juego en línea?',
      [
        'Decirle a un adulto',
        'Compartirla',
        'Ignorar y continuar jugando',
      ],
      'Decirle a un adulto',
      'Es importante informar a un adulto para que te ayude a manejar la situación de manera segura.',
      'Nunca compartas información personal con extraños en línea.'),
  Question(
      'Si recibes un mensaje de alguien que no conoces, ¿qué harías?',
      [
        'Mostrarlo a tus padres o tutores',
        'Responder rápidamente',
        'Borrarlo sin decir nada',
      ],
      'Mostrarlo a tus padres o tutores',
      'Es importante que tus padres o tutores sepan sobre cualquier mensaje extraño que recibas.',
      'No respondas a mensajes de desconocidos y siempre informa a un adulto.'),
  Question(
      '¿Por qué es importante tener una contraseña difícil de adivinar?',
      [
        'Para proteger tu cuenta',
        'Porque es divertido',
        'No importa, cualquiera puede adivinarla',
      ],
      'Para proteger tu cuenta',
      'Una contraseña fuerte ayuda a mantener tu cuenta segura.',
      'Usa una combinación de letras, números y símbolos para crear una contraseña segura.'),
  Question(
      'Si ves un anuncio llamativo diciendo que ganaste algo, ¿qué haces?',
      [
        'Ignorarlo',
        'Hacer clic para ganar el premio',
        'Pedir ayuda a un adulto',
      ],
      'Ignorarlo',
      'Muchos anuncios en línea son engañosos y pueden ser peligrosos.',
      'No hagas clic en anuncios sospechosos y siempre consulta con un adulto.'),
  Question(
      '¿Qué debes hacer si alguien te envía fotos raras o extrañas?',
      [
        'Decirle a tus padres o maestros',
        'Guardarlas',
        'Compartirlas con tus amigos',
      ],
      'Decirle a tus padres o maestros',
      'Es importante informar a un adulto sobre cualquier contenido inapropiado que recibas.',
      'No guardes ni compartas fotos extrañas, siempre informa a un adulto.'),
  Question(
      '¿Deberías compartir tu contraseña con tus amigos?',
      [
        'No, es solo tuya',
        'Sí, porque son de confianza',
        'Solo con tus mejores amigos',
      ],
      'No, es solo tuya',
      'Tu contraseña es personal y no debe ser compartida con nadie.',
      'Mantén tus contraseñas seguras y no las compartas con nadie.'),
  Question(
      '¿Es seguro descargar juegos o apps sin permiso de un adulto?',
      [
        'No, primero hay que preguntar',
        'Sí, si parecen divertidos',
        'Solo si el anuncio lo recomienda',
      ],
      'No, primero hay que preguntar',
      'Algunas aplicaciones pueden ser peligrosas o contener virus.',
      'Siempre pide permiso a un adulto antes de descargar algo.'),
  Question(
      '¿Qué es una contraseña segura?',
      [
        'Una mezcla de letras, números y símbolos',
        'Tu nombre y fecha de nacimiento',
        'Algo fácil de recordar, como "1234"',
      ],
      'Una mezcla de letras, números y símbolos',
      'Una contraseña segura es difícil de adivinar y protege tu información.',
      'Usa una combinación de letras, números y símbolos para crear una contraseña segura.'),
  Question(
      '¿Qué haces si alguien te pide fotos o videos personales?',
      [
        'Le dices que no y se lo dices a un adulto',
        'Se los envías',
        'Ignoras la petición',
      ],
      'Le dices que no y se lo dices a un adulto',
      'Es importante proteger tu privacidad y no compartir fotos o videos personales.',
      'Nunca envíes fotos o videos personales a desconocidos y siempre informa a un adulto.'),
  Question(
      '¿Por qué no debes abrir correos de personas desconocidas?',
      [
        'Porque pueden contener virus',
        'Porque son aburridos',
        'Porque no tienen juegos',
      ],
      'Porque pueden contener virus',
      'Los correos de desconocidos pueden ser peligrosos y contener virus.',
      'No abras correos de personas que no conoces y elimina los mensajes sospechosos.')
];

final List<Question> adolescentQuestions = [
  Question(
      '¿Por qué no deberías compartir información personal en redes sociales?',
      [
        'Porque pueden usarla para hacerte daño',
        'Porque es aburrido',
        'Porque no importa',
      ],
      'Porque pueden usarla para hacerte daño',
      'Compartir información personal en redes sociales puede ser peligroso.',
      'No compartas información personal en redes sociales para proteger tu privacidad.'),
  Question(
      '¿Qué harías si encuentras una memoria USB tirada en el suelo?',
      [
        'Reportarla a un adulto',
        'Conectarla a tu computadora',
        'Guardarla para más tarde',
      ],
      'Reportarla a un adulto',
      'Las memorias USB desconocidas pueden contener virus o malware.',
      'No conectes memorias USB desconocidas a tu computadora y siempre informa a un adulto.'),
  Question(
      '¿Es seguro usar la misma contraseña para todas tus cuentas?',
      [
        'No, porque si la descubren, pueden entrar a todo',
        'Sí, es más fácil de recordar',
        'Solo en redes sociales',
      ],
      'No, porque si la descubren, pueden entrar a todo',
      'Usar la misma contraseña para todas tus cuentas es arriesgado.',
      'Usa contraseñas diferentes para cada cuenta para mayor seguridad.'),
  Question(
      'Si alguien te acosa en línea, ¿qué deberías hacer?',
      [
        'Bloquearlo y reportarlo',
        'Responderle para defenderte',
        'Ignorarlo',
      ],
      'Bloquearlo y reportarlo',
      'El acoso en línea es un problema serio y debe ser reportado.',
      'Bloquea y reporta a cualquier persona que te acose en línea.'),
  Question(
      '¿Qué es el phishing?',
      [
        'Un correo falso para robar información',
        'Un juego de pesca',
        'Una nueva red social',
      ],
      'Un correo falso para robar información',
      'El phishing es una técnica utilizada para robar información personal.',
      'No respondas a correos sospechosos y no hagas clic en enlaces desconocidos.'),
  Question(
      '¿Por qué no es buena idea conectarte a Wi-Fi público sin contraseña?',
      [
        'Porque alguien podría espiar tus datos',
        'Porque puede ser lento',
        'Porque no es necesario',
      ],
      'Porque alguien podría espiar tus datos',
      'El Wi-Fi público sin contraseña puede ser peligroso.',
      'Evita conectarte a redes Wi-Fi públicas sin contraseña para proteger tu información.'),
  Question(
      '¿Qué harías si una app te pide permisos innecesarios, como acceder a tu micrófono o cámara?',
      [
        'Los rechazas y revisas los permisos',
        'Los aceptas para usarla',
        'La desinstalas',
      ],
      'Los rechazas y revisas los permisos',
      'Algunas aplicaciones piden permisos innecesarios que pueden ser peligrosos.',
      'Revisa y rechaza los permisos innecesarios de las aplicaciones.'),
  Question(
      '¿Cómo puedes saber si un sitio web es seguro para navegar?',
      [
        'Si tiene "https://" al inicio',
        'Si tiene muchos anuncios',
        'Si se ve bien diseñado',
      ],
      'Si tiene "https://" al inicio',
      'Los sitios web seguros tienen "https://" al inicio de la URL.',
      'Navega solo en sitios web que tengan "https://" para mayor seguridad.'),
  Question(
      '¿Qué harías si recibes un mensaje diciendo que ganaste un premio, pero piden tu tarjeta de crédito?',
      [
        'Ignoras el mensaje',
        'Proporcionas la información',
        'Lo reportas como spam',
      ],
      'Ignoras el mensaje',
      'Los mensajes que piden información personal para reclamar premios suelen ser estafas.',
      'No proporciones información personal y reporta el mensaje como spam.'),
  Question(
      '¿Por qué es importante cerrar sesión en computadoras públicas?',
      [
        'Para que nadie más use tu cuenta',
        'Para ahorrar energía',
        'No importa, no pasa nada',
      ],
      'Para que nadie más use tu cuenta',
      'Cerrar sesión en computadoras públicas protege tu información personal.',
      'Siempre cierra sesión en computadoras públicas para evitar que otros usen tu cuenta.')
];

final List<Question> seniorQuestions = [
  Question(
      '¿Qué significa "no compartir datos personales" en redes sociales?',
      [
        'No compartir tu nombre completo, dirección o teléfono',
        'No compartir recetas de cocina',
        'No compartir tus hobbies',
      ],
      'No compartir tu nombre completo, dirección o teléfono',
      'Compartir datos personales en redes sociales puede ser peligroso.',
      'No compartas tu nombre completo, dirección o teléfono en redes sociales.'),
  Question(
      '¿Por qué es importante verificar la fuente de un correo antes de abrirlo?',
      [
        'Para evitar virus',
        'Para leerlo mejor',
        'Porque algunos correos son aburridos',
      ],
      'Para evitar virus',
      'Los correos de fuentes desconocidas pueden contener virus.',
      'Verifica la fuente de un correo antes de abrirlo para evitar virus.'),
  Question(
      '¿Qué debes hacer si recibes una llamada pidiendo tu contraseña bancaria?',
      [
        'Colgar y reportarla',
        'Darla solo si parece confiable',
        'Anotarla en un papel para revisarla después',
      ],
      'Colgar y reportarla',
      'Las llamadas pidiendo contraseñas bancarias suelen ser estafas.',
      'No proporciones tu contraseña bancaria por teléfono y reporta la llamada.'),
  Question(
      '¿Cómo puedes reconocer un mensaje de texto fraudulento?',
      [
        'Ambas respuestas son correctas',
        'Si pide información urgente',
        'Si tiene errores ortográficos',
      ],
      'Ambas respuestas son correctas',
      'Los mensajes de texto fraudulentos suelen pedir información urgente y tener errores ortográficos.',
      'No respondas a mensajes de texto sospechosos y reporta cualquier actividad fraudulenta.'),
  Question(
      '¿Es seguro guardar contraseñas en un papel junto a tu computadora?',
      [
        'No, porque cualquiera podría verlas',
        'Sí, para recordarlas fácilmente',
        'Solo si las guardas en clave',
      ],
      'No, porque cualquiera podría verlas',
      'Guardar contraseñas en un papel junto a tu computadora es arriesgado.',
      'Usa un gestor de contraseñas para mantener tus contraseñas seguras.'),
  Question(
      '¿Qué es un antivirus y por qué lo necesitas?',
      [
        'Un programa para proteger tu computadora',
        'Un escáner para correos',
        'Una aplicación para videollamadas',
      ],
      'Un programa para proteger tu computadora',
      'Un antivirus protege tu computadora de virus y malware.',
      'Instala y mantén actualizado un antivirus para proteger tu computadora.'),
  Question(
      '¿Qué hacer si un sitio web te pide datos bancarios para un regalo?',
      [
        'Ignorarlo y salir del sitio',
        'Proporcionar los datos',
        'Compartirlo con amigos',
      ],
      'Ignorarlo y salir del sitio',
      'Los sitios web que piden datos bancarios para regalos suelen ser estafas.',
      'No proporciones datos bancarios en sitios web sospechosos y sal del sitio.'),
  Question(
      '¿Qué significa tener una contraseña segura?',
      [
        'Usar una combinación de letras, números y símbolos',
        'Usar tu nombre y fecha de nacimiento',
        'Usar algo corto y fácil de escribir',
      ],
      'Usar una combinación de letras, números y símbolos',
      'Una contraseña segura es difícil de adivinar y protege tu información.',
      'Usa una combinación de letras, números y símbolos para crear una contraseña segura.'),
  Question(
      '¿Cómo evitar estafas en redes sociales?',
      [
        'Ambas respuestas son correctas',
        'No aceptar solicitudes de extraños',
        'No compartir información personal',
      ],
      'Ambas respuestas son correctas',
      'Evitar solicitudes de extraños y no compartir información personal ayuda a prevenir estafas.',
      'No aceptes solicitudes de extraños y no compartas información personal en redes sociales.'),
  Question(
      '¿Por qué no deberías reenviar mensajes con enlaces desconocidos?',
      [
        'Porque pueden ser peligrosos',
        'Porque pueden ser molestos',
        'Porque ocupan espacio en el teléfono',
      ],
      'Porque pueden ser peligrosos',
      'Los mensajes con enlaces desconocidos pueden ser peligrosos.',
      'No reenvíes mensajes con enlaces desconocidos para evitar riesgos.')
];
# This file should contain all the record creation needed to seed the database with its
# default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database
# with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

@user = User.create(dinero: 10_000, tipo: 'Administrador', telefono: 942_042_042, edad: 21, username: 'admin', email: 'admin@uc.cl', password: 'colocolo')
@user2 = User.create(dinero: 250_000, tipo: 'Cliente', telefono: 982_813_771, edad: 21, username: 'tomasfernandez', email: 'tomasft0410@uc.cl', password: 'colocolo')
@user3 = User.create(dinero: 150_000, tipo: 'Cliente', telefono: 982_815_771, edad: 21, username: 'pedroherrera', email: 'pherrera0@uc.cl', password: 'trinidad')
@user4 = User.create(dinero: 150_000, tipo: 'Cliente', telefono: 982_816_771, edad: 21, username: 'benjaminalamos', email: 'benjale@uc.cl', password: 'trinidad')
@user5 = User.create(dinero: 150_000, tipo: 'Cliente', telefono: 982_818_771, edad: 21, username: 'elpizza', email: 'pizza@uc.cl', password: 'trinidad')
@user6 = User.create(dinero: 150_000, tipo: 'Cliente', telefono: 982_816_771, edad: 21, username: 'sgutgar', email: 'sergio@uc.cl', password: 'trinidad')
@comuna = Comuna.create(nombre: 'Vitacura')
@comuna2 = Comuna.create(nombre: 'Lo Barnechea')
@comuna3 = Comuna.create(nombre: 'Providencia')
@comuna4 = Comuna.create(nombre: 'Laguna')
@servicio = Servicio.create(nombre: 'Limpieza', descripcion: 'Servicio de limpieza', max_capacidad: 1000,
                            imagen: 'https://assets-global.website-files.com/5a43f26a7b791a0001995f0f/5e6f9c715892623cc784803e_fotopostdesinfeccio-865x540.jpg',
                            precio: 100_000, status: 'Aceptado', user_id: 3)
@servicio2 = Servicio.create(nombre: 'Bartender', descripcion: 'Servicio de bar', max_capacidad: 700,
                             imagen: 'https://elbartender.net/wp-content/uploads/2019/03/bartender-sirviendo-coctel.jpg',
                             precio: 800_000, status: 'Aceptado', user_id: 2)
@servicio3 = Servicio.create(nombre: 'Gastronomia', descripcion: 'Servicio de comida', max_capacidad: 500,
                             imagen: 'https://corbuse.edu.mx/blog/wp-content/uploads/2018/11/CORBUSE-que-es-la-gastronomia.jpg',
                             precio: 500_000, status: 'Aceptado', user_id: 4)
@carrete = Carrete.create(titulo: 'Cumpleaños Tomas', direccion: 'La Invernada 7005', max_asistentes: 500, costo_total: 250_000,
                          imagen: 'http://cineycomedia.com/wp-content/uploads/2012/06/PXD-004283rv3.jpg', dinero_recaudado: 0,
                          descripcion: 'Cumpleaños de Tomas a las 22:00', estado_busqueda: 'Abierto', user_id: 2, comuna_id: 1, fecha: Date.new(2020, 12, 21), fecha_limite: Date.new(2020, 12, 30))
@carrete2 = Carrete.create(titulo: 'Casa Benjamin', direccion: 'Camino Real 6780', max_asistentes: 1000, costo_total: 350_000,
                           imagen: 'https://upload.wikimedia.org/wikipedia/commons/3/32/Wikipedia_space_ibiza%2803%29.jpg', dinero_recaudado: 0,
                           descripcion: 'Carrete Casa Jale desde temprano', estado_busqueda: 'Abierto', user_id: 4, comuna_id: 2, fecha: Date.new(2020, 12, 10), fecha_limite: Date.new(2020, 12, 9))

carretes = Carrete.create([{ titulo: 'Ibiza Party', direccion: 'Av Vitacura 6781', max_asistentes: 5000, costo_total: 1_000_000,
                             imagen: 'https://micasainn.com/wp-content/uploads/2016/06/IBIZA.jpg', dinero_recaudado: 0,
                             descripcion: 'Fiesta en Club Eve', estado_busqueda: 'Abierto', user_id: 3, comuna_id: 3, fecha: Date.new(2020, 12, 11), fecha_limite: Date.new(2020, 12, 10) },
                           { titulo: 'Ice Maintencillo', direccion: 'Culb Ice Maitencillo', max_asistentes: 7000, costo_total: 2_000_000,
                             imagen: 'https://i2.wp.com/turismolocal.cl/wp-content/uploads/2019/03/ice-4.jpg', dinero_recaudado: 0,
                             descripcion: 'Fiesta año nuevo en Ice Maintencillo', estado_busqueda: 'Abierto', user_id: 5, comuna_id: 4, fecha: Date.new(2020, 12, 31), fecha_limite: Date.new(2020, 12, 20) },
                             { titulo: 'Fiesta Sorpresa', direccion: 'Luis Pasteur 4781', max_asistentes: 800, costo_total: 400_000,
                             imagen: 'https://www.elespejodemalleco.cl/wp-content/uploads/2014/02/reggaeton-.jpg', dinero_recaudado: 0,
                             descripcion: 'Fiesta sorpresa para Pablo Sacchetti', estado_busqueda: 'Abierto', user_id: 6, comuna_id: 1, fecha: Date.new(2020, 12, 18), fecha_limite: Date.new(2020, 12, 17) },
                             { titulo: 'Fiesta Clandestina COVID-19', direccion: 'Carolina Rabat 781', max_asistentes: 2000, costo_total: 600_000,
                             imagen: 'https://asset2.zankyou.com/images/mag-card-c/4ce/3eb5/878/623/-/es/wp-content/uploads/2017/04/shutterstock_3513804801.jpg', dinero_recaudado: 0,
                             descripcion: 'Fiesta clandestina en tiempos de COVID, traigan mascarilla!', estado_busqueda: 'Abierto', user_id: 6, comuna_id: 1, fecha: Date.new(2020, 12, 25), fecha_limite: Date.new(2020, 12, 23) },
                             { titulo: 'Pool Party', direccion: 'Av Los Trapenses 5542', max_asistentes: 100, costo_total: 200_000,
                             imagen: 'https://athomeinhollywood.com/wp-content/uploads/2016/08/Barclay-and-mermaid-.jpg', dinero_recaudado: 0,
                             descripcion: 'Fiesta con piscina, traigan trajebaño!', estado_busqueda: 'Abierto', user_id: 6, comuna_id: 2, fecha: Date.new(2020, 12, 25), fecha_limite: Date.new(2020, 12, 23) }

                            ])

valoracion_carretes = ValoracionCarrete.create([{ user_id: 3, puntuacion: 9, carrete_id: 1 }, { user_id: 4, puntuacion: 9, carrete_id: 2 },
                                                { user_id: 4, puntuacion: 8, carrete_id: 1 }, { user_id: 3, puntuacion: 6, carrete_id: 2 },
                                                { user_id: 3, puntuacion: 3, carrete_id: 3 }, { user_id: 3, puntuacion: 7, carrete_id: 4 },
                                                { user_id: 4, puntuacion: 4, carrete_id: 3 }, { user_id: 4, puntuacion: 7, carrete_id: 4 },
                                                { user_id: 5, puntuacion: 9, carrete_id: 1 }, { user_id: 5, puntuacion: 9, carrete_id: 2 },
                                                { user_id: 6, puntuacion: 8, carrete_id: 1 }, { user_id: 6, puntuacion: 6, carrete_id: 2 },
                                                { user_id: 5, puntuacion: 3, carrete_id: 3 }, { user_id: 5, puntuacion: 7, carrete_id: 4 },
                                                { user_id: 6, puntuacion: 4, carrete_id: 3 }, { user_id: 6, puntuacion: 7, carrete_id: 4 },])

servicios = Servicio.create([{ nombre: 'Seguridad', descripcion: 'Seguridad para tu evento', max_capacidad: 5000,
                               imagen: 'https://1.bp.blogspot.com/-F7mYHr7HcgA/XPAZYtKkUYI/AAAAAAAAEQI/P27ESSzdg_Q-kyDS7mVQUEiL5ZEbYBKUQCLcBGAs/s1600/guardia.png',
                               precio: 300_000, status: 'Aceptado', user_id: 5 },
                              {nombre: 'Iluminación', descripcion: 'Iluminación para tu evento', max_capacidad: 10000,
                                imagen: 'https://i0.wp.com/fbaudio.cl/wp-content/uploads/2014/01/matrimonio_deck_baron.jpg?ssl=1',
                                precio: 100_000, status: 'Aceptado', user_id: 6 },
                                {nombre: 'Musica', descripcion: 'Musica para tu evento', max_capacidad: 10000,
                                  imagen: 'https://img.redbull.com/images/q_auto,f_auto/redbullcom/2018/06/04/6df51d96-c77f-43a7-82d5-7c060926a30f/bc-one-latin-america-dj-prax',
                                  precio: 250_000, status: 'Aceptado', user_id: 4 },
                                  {nombre: 'DJ', descripcion: 'La mejor musica para tu evento', max_capacidad: 20000,
                                  imagen: 'https://wololosound.com/wp-content/uploads/maxresdefault-19-2.jpg',
                                  precio: 150_000, status: 'Aceptado', user_id: 5 }])

comunas = Comuna.create([{ nombre: 'Recoleta' }, { nombre: 'Las Condes' }, { nombre: 'Colina' }, { nombre: 'Puente Alto' }])

valoracion_servicios = ValoracionServicio.create([{ user_id: 3, puntuacion: 9, servicio_id: 1 }, { user_id: 4, puntuacion: 8, servicio_id: 1 },
                                                  { user_id: 5, puntuacion: 4, servicio_id: 1 }, { user_id: 6, puntuacion: 6, servicio_id: 1 },
                                                  { user_id: 3, puntuacion: 8, servicio_id: 2 }, { user_id: 4, puntuacion: 7, servicio_id: 2 },
                                                  { user_id: 5, puntuacion: 3, servicio_id: 2 }, { user_id: 6, puntuacion: 6, servicio_id: 2 },
                                                  { user_id: 3, puntuacion: 8, servicio_id: 3 }, { user_id: 4, puntuacion: 7, servicio_id: 3 },
                                                  { user_id: 5, puntuacion: 3, servicio_id: 3 }, { user_id: 6, puntuacion: 6, servicio_id: 3 },
                                                  { user_id: 3, puntuacion: 8, servicio_id: 4 }, { user_id: 4, puntuacion: 7, servicio_id: 4 },
                                                  { user_id: 5, puntuacion: 3, servicio_id: 4 }, { user_id: 6, puntuacion: 6, servicio_id: 4 },
                                                  { user_id: 3, puntuacion: 8, servicio_id: 5 }, { user_id: 4, puntuacion: 7, servicio_id: 5 },
                                                  { user_id: 5, puntuacion: 3, servicio_id: 5 }, { user_id: 6, puntuacion: 6, servicio_id: 5 },
                                                  { user_id: 3, puntuacion: 8, servicio_id: 6 }, { user_id: 4, puntuacion: 7, servicio_id: 6 },
                                                  { user_id: 5, puntuacion: 3, servicio_id: 6 }, { user_id: 6, puntuacion: 6, servicio_id: 6 },
                                                  { user_id: 3, puntuacion: 10, servicio_id: 7 }, { user_id: 4, puntuacion: 9, servicio_id: 7 },
                                                  { user_id: 5, puntuacion: 10, servicio_id: 7 }, { user_id: 6, puntuacion: 9, servicio_id: 7 },
                                                ])

comentarios_servicios = Comentario.create([{ servicio_id: 1, user_id: 4, contenido: 'Muy buen servicio!' }, { servicio_id: 1, user_id: 5, contenido: 'Dejaron muy limpio todo!' }, { servicio_id: 1, user_id: 6, contenido: 'No limpiaron la entrada!' },
                                           { servicio_id: 2, user_id: 4, contenido: 'Se acabo el copete temprano!' }, { servicio_id: 2, user_id: 5, contenido: 'Muy rico los pisco sour!' },
                                           { servicio_id: 3, user_id: 4, contenido: 'Muy rica la comida' }, 
                                          ])

comentarios_carretes = ComentarioCarrete.create([{ carrete_id: 1, user_id: 5, contenido: 'Se viene muy bueno!' }, { carrete_id: 1, user_id: 6, contenido: 'Tengo que llevar algo?' },
                                                { carrete_id: 2, user_id: 2, contenido: 'Estuvo muy bueno el evento en la casa de Benjamin!' }, { carrete_id: 2, user_id: 6, contenido: 'Eramos muchos hombres, pero igual estuvo simpatico!' },
                                                { carrete_id: 2, user_id: 4, contenido: 'Gracias a todos por asistir a mi evento!' }
                                                  ])

contratos = Contrato.create([{ carrete_id: 1, servicio_id: 1 }, { carrete_id: 1, servicio_id: 2 }, { carrete_id: 1, servicio_id: 3 },
                             { carrete_id: 2, servicio_id: 2 }, { carrete_id: 2, servicio_id: 3 }, { carrete_id: 2, servicio_id: 4 },
                             { carrete_id: 3, servicio_id: 4 }, { carrete_id: 3, servicio_id: 5 }, { carrete_id: 3, servicio_id: 6 },
                             { carrete_id: 4, servicio_id: 1 }, { carrete_id: 4, servicio_id: 3 }, { carrete_id: 4, servicio_id: 4 }])

bids = Ofert.create([{ bid: 3000, user_id: 3, carrete_id: 1 }, { bid: 2500, user_id: 4, carrete_id: 1 },
                     { bid: 4000, user_id: 3, carrete_id: 2 }, { bid: 3200, user_id: 4, carrete_id: 3 },
                     { bid: 4300, user_id: 6, carrete_id: 2 }, { bid: 3100, user_id: 2, carrete_id: 3 },
                     { bid: 5000, user_id: 5, carrete_id: 1 }, { bid: 1200, user_id: 6, carrete_id: 1 },
                     { bid: 4300, user_id: 2, carrete_id: 2 }, { bid: 3100, user_id: 5, carrete_id: 3 },
                     { bid: 2000, user_id: 3, carrete_id: 3 }, { bid: 2900, user_id: 4, carrete_id: 4 }])

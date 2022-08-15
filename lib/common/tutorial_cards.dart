import 'dart:ui';

import 'package:lgpd_spread_game/components/draggable_card_widget.dart';

List<DraggableCardWidget> listTutorialCards = [
  DraggableCardWidget(
    isDraggable: false,
    character: 'lib/assets/people/LGPD-Morena.svg',
    question:
        ' A única coisa que você necessitará de fazer é conhecer um pouco mais do nosso reino então fique livre de ir e vir quando quiser, para isso, utilize este mapa.',
    correctOption: -1,
    options: const {
      1: 'Maravilha! Irei agora mesmo atrás de mais conhecimento',
      2: 'Perfeito!',
      3: 'Tenha minhas gratidões, irei agora mesmo atrás do meu novo destino',
      4: 'Então não irei perder mais tempo, estou indo lá agora mesmo!'
    },
    scoreMap: const {
      1: {
        'sumLevel': true,
        'level': 2,
        'inteligence': '1',
        'sumInteligence': false
      },
      2: {
        'sumLevel': true,
        'level': 10,
        'inteligence': '5',
        'sumInteligence': true
      },
      3: {
        'sumLevel': true,
        'level': 2,
        'inteligence': '1',
        'sumInteligence': false
      },
      4: {
        'sumLevel': true,
        'level': 2,
        'inteligence': '1',
        'sumInteligence': false
      },
    },
  ),
  DraggableCardWidget(
    actionShowMap: true,
    character: 'lib/assets/people/LGPD-Morena.svg',
    question:
        'Mas para isso, tudo o que você precisará fazer é passar por desafios de conhecimento, e caso prove digno você terá um progresso muito rápido.',
    correctOption: -1,
    options: const {
      1: 'Ótimo!',
      2: 'Perfeito!',
      3: 'E como eu encontro esta tal de Romana?',
      4: 'E por onde posso ir a livraria?'
    },
    scoreMap: const {
      1: {
        'sumLevel': true,
        'level': 2,
        'inteligence': '1',
        'sumInteligence': false
      },
      2: {
        'sumLevel': true,
        'level': 10,
        'inteligence': '5',
        'sumInteligence': true
      },
      3: {
        'sumLevel': true,
        'level': 2,
        'inteligence': '1',
        'sumInteligence': false
      },
      4: {
        'sumLevel': true,
        'level': 2,
        'inteligence': '1',
        'sumInteligence': false
      },
    },
  ),
  DraggableCardWidget(
    character: 'lib/assets/people/LGPD-Morena.svg',
    question:
        'Será como um treinamento, você deverá aprender sobre como proteger os seus aliados e quando ter obtido todo conhecimento volte aqui e será o novo rei do trono da Ruy Company.',
    correctOption: -1,
    options: const {
      1: 'Ótimo!',
      2: 'Perfeito!',
      3: 'Como quiser, mas o que eu terei de fazer?',
      4: 'E quanto isso irá me custar?'
    },
    scoreMap: const {
      1: {
        'sumLevel': true,
        'level': 2,
        'inteligence': '1',
        'sumInteligence': false
      },
      2: {
        'sumLevel': true,
        'level': 10,
        'inteligence': '5',
        'sumInteligence': true
      },
      3: {
        'sumLevel': true,
        'level': 2,
        'inteligence': '1',
        'sumInteligence': false
      },
      4: {
        'sumLevel': true,
        'level': 2,
        'inteligence': '1',
        'sumInteligence': false
      },
    },
  ),
  DraggableCardWidget(
    actionShowProgress: true,
    character: 'lib/assets/people/LGPD-Morena.svg',
    question:
        'Não irei demorar, basta tempo e força de vontade de aprender e todo o reino Ruy Company será seu!',
    correctOption: -1,
    options: const {
      1: 'Opa! Como recusar uma oferta destas?',
      2: 'E o que terei de fazer?',
      3: 'Isto me interessa, o que será necessário?',
      4: 'E isto precisa de dinheiro?'
    },
    scoreMap: const {
      1: {
        'sumLevel': true,
        'level': 2,
        'inteligence': '1',
        'sumInteligence': false
      },
      2: {
        'sumLevel': true,
        'level': 10,
        'inteligence': '5',
        'sumInteligence': true
      },
      3: {
        'sumLevel': true,
        'level': 2,
        'inteligence': '1',
        'sumInteligence': false
      },
      4: {
        'sumLevel': true,
        'level': 2,
        'inteligence': '1',
        'sumInteligence': false
      },
    },
  ),
  DraggableCardWidget(
    character: 'lib/assets/people/LGPD-Morena.svg',
    question:
        'Não se incomode! A propósito me chamo Cassandra! Tenho procurado por novos rostos para fazer uma boa proposta, gostaria de ouvi-la?',
    correctOption: -1,
    options: const {
      1: 'Por favor!',
      2: 'Com toda certeza!',
      3: 'Estou de ouvidos abertos!',
      4: 'Se não demorar muito ...'
    },
    scoreMap: const {
      1: {
        'sumLevel': true,
        'level': 2,
        'inteligence': '1',
        'sumInteligence': false
      },
      2: {
        'sumLevel': true,
        'level': 10,
        'inteligence': '5',
        'sumInteligence': true
      },
      3: {
        'sumLevel': true,
        'level': 2,
        'inteligence': '1',
        'sumInteligence': false
      },
      4: {
        'sumLevel': true,
        'level': 2,
        'inteligence': '1',
        'sumInteligence': false
      },
    },
  ),
  DraggableCardWidget(
    character: 'lib/assets/people/LGPD-Morena.svg',
    question:
        'Um rosto desconhecido por estas terras, estás perdido? O que te traz aqui?',
    correctOption: -1,
    options: const {
      1: 'Me desculpe, estava me aventurando e ao acaso me encontro aqui.',
      2: 'Me desculpe, estou apenas conhecendo novos ares.',
      3: 'Me desculpe, mas para falar a verdade, nem eu consigo te responder.',
      4: 'Me desculpe, estou a procura de uma boa terra para morar.'
    },
    scoreMap: const {
      1: {
        'sumLevel': true,
        'level': 2,
        'inteligence': '1',
        'sumInteligence': false
      },
      2: {
        'sumLevel': true,
        'level': 10,
        'inteligence': '5',
        'sumInteligence': true
      },
      3: {
        'sumLevel': true,
        'level': 2,
        'inteligence': '1',
        'sumInteligence': false
      },
      4: {
        'sumLevel': true,
        'level': 2,
        'inteligence': '1',
        'sumInteligence': false
      },
    },
  ),
];

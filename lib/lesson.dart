//import 'dart:html';

class Lesson {
  String code = '', description = '';
  bool online = true;
  Uri lessonModuleURI = Uri.https('ecl.drivered.pt', '/lesson');
  int prerequisite = 0;

  Lesson(int lessonNumber) {
    code = 'L$lessonNumber';
    lessonModuleURI = Uri.https('ecl.drivered.pt', '/lesson$lessonNumber');

    switch(lessonNumber) {
      case 1:
        description = 'Perfil do condutor';
        prerequisite = 0;
        break;
      case 2:
        description = 'Efeitos e consequências na condução/'
            ' O condutor e o seu estado físico e psicológico/ O álcool';
        prerequisite = 1;
        break;
      case 3:
        description = 'Comportamento cívico/ Trânsito para peões';
        prerequisite = 2;
        break;
      case 4:
        description = 'Segurança rodoviária/ O acidente/ Proibição telemóveis';
        prerequisite = 3;
        break;
      case 5:
        description = 'A condução/ Sinais dos condutores';
        prerequisite = 4;
        break;
      case 6:
        description = 'Tempo de reação';
        prerequisite = 5;
        break;
      case 7:
        description = 'Mobilidade sustentável';
        prerequisite = 6;
        break;
      case 8:
        description = 'O sistema de circulação rodoviário/'
            ' Função da condução/ Velocidades';
        prerequisite = 0;
        break;
      case 9:
        description = 'Sinais verticais/ Sinais de perigo/'
            ' Sinais de cedência de passagem/ Sinais de proibição';
        prerequisite = 0;
        break;
      case 10:
        description = 'Sinais luminosos/ Sinais dos agentes/'
            ' Sinalização temporária/ Sinais de obrigação/'
            ' Sinais de prescrição específica/ Sinais de mensagem variável';
        prerequisite = 0;
        break;
      case 11:
        description = 'Sinais verticais/'
            ' Sinais de indicação e turístico cultural/ Marcas rodoviárias';
        prerequisite = 0;
        break;
      case 12:
        description = 'Regras de trânsito/ Auto-estrada/ Vias equiparadas/'
            ' Ponte 25 de Abril';
        prerequisite = 0;
        break;
      case 13:
        description = 'Iluminação de veículos/'
            ' Transporte colectivo de passageiros/ Transportes especiais/'
            ' Veículos em missão urgente';
        prerequisite = 0;
        break;
      case 14:
        description = 'Cedência de passagem/ Cruzamento de veículos';
        prerequisite = 0;
        break;
      case 15:
        description = 'Mudança de direção/ Inversão do sentido de marcha/'
            ' Marcha-atrás';
        prerequisite = 0;
        break;
      case 16:
        description = 'Paragem e estacionamento';
        prerequisite = 0;
        break;
      case 17:
        description = 'O condutor e o veículo/ Classificação dos veículos/'
            ' Pesos e dimensões';
        prerequisite = 0;
        break;
      case 18:
        description = 'Constituintes do veículo/ Motor e sistemas/'
            ' Inspeções periódicas obrigatórias';
        prerequisite = 0;
        break;
      case 19:
        description = 'Transporte de passageiros e de carga/'
            ' Equipamentos de segurança/ Segurança';
        prerequisite = 0;
        break;
      case 20:
        description = 'O condutor e os outros utentes da via/'
            ' Condução defensiva';
        prerequisite = 0;
        break;
      case 21:
        description = 'O condutor, a via e os outros fatores/'
            ' Classificação das vias';
        prerequisite = 0;
        break;
      case 22:
        description = 'Habilitação legal para conduzir/ Títulos de condução/'
            ' Categorias/ Validade dos títulos de condução/ Revalidação/'
            ' Exames/ Novos exames';
        prerequisite = 0;
        break;
      case 23:
        description = 'Responsabilidade/ Responsabilidade criminal/'
            ' Cessação do título de condução/ Responsabilidade civil/ Seguro/'
            ' Comportamento em caso de avaria ou acidente';
        prerequisite = 0;
        break;
      case 24:
        description = 'Perceção de risco';
        prerequisite = 7;
        break;
      case 25:
        description = 'Perceção de risco II';
        prerequisite = 24;
        break;
      case 26:
        description = 'Perceção de risco II (continuação)';
        prerequisite = 25;
        break;
      case 27:
        description = 'Distração na condução';
        prerequisite = 26;
        break;
      case 28:
        description = 'Eco-Condução';
        prerequisite = 27;
        break;
    }


    if (lessonNumber >= 8 && lessonNumber <=23) {
      online = true;
    } else {
      online =false;
    }

  }
}
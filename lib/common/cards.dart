import 'package:lgpd_spread_game/components/draggable_card_widget.dart';

Map<int, DraggableCardWidget> initialCardsCassandra = {
  1: DraggableCardWidget(
    character: 'lib/assets/people/LGPD-Morena.svg',
    question: 'Quais seriam as hipóteses de Dados Pessoais Sensíveis: ',
    correctOption: 2,
    options: const {
      1: 'Dados Genéticos, Biométricos, CPF e Nome.',
      2: 'Dados sobre origem racial ou étnica, convicções religiosas ou filosóficas, opiniões políticas, filiação sindical, questões genéticas, biométricas e sobre a saúde ou a vida sexual.',
      3: 'Dados sobre origem racial ou étnica, questões genéticas e biométricas, sobre saúde ou a vida sexual, CPF e Nome completo.',
      4: 'Dados sobre localização da pessoa, opiniões políticas, convicções religiosas e sobre a saúde ou vida sexual da pessoa.'
    },
    scoreMap: const {},
  ),
  2: DraggableCardWidget(
    character: 'lib/assets/people/LGPD-Morena.svg',
    question:
        'O titular dos dados pessoais se indaga sobre os direitos que tem sobre seus dados, especificamente ao que pode obter através do controlador a qualquer momento e mediante requisição, onde cabe ao controlador fornecer as seguintes disposições, exceto:',
    correctOption: 4,
    options: const {
      1: 'Confirmação da existência de tratamento.',
      2: 'Acesso aos dados.',
      3: 'Correção de dados incompletos, inexatos ou desatualizados.',
      4: 'Conceder acesso ao titular não só ao seu dado que se encontra no poder do controlador, mais aos de outros usuários da mesma rede de tratamento.'
    },
    scoreMap: const {},
  ),
  3: DraggableCardWidget(
    character: 'lib/assets/people/LGPD-Morena.svg',
    question:
        'O tratamento de dados pessoais somente poderá ser realizado nas seguintes hipóteses, exceto:',
    correctOption: 2,
    options: const {
      1: 'Mediante o fornecimento de consentimento pelo titular.',
      2: 'Quando o controlador dos dados achar pertinente usá-lo para outra finalidade além da inicial a qual a qual foi informado ao titular.',
      3: 'Para o cumprimento de obrigação legal ou regulatória pelo controlador.',
      4: 'Quando necessário para a execução de contrato ou de procedimentos preliminares relacionados a contrato do qual seja parte o titular, a pedido do titular dos dados.'
    },
    scoreMap: const {},
  ),
  4: DraggableCardWidget(
    character: 'lib/assets/people/LGPD-Morena.svg',
    question:
        'Certo Operador buscando sanar dúvidas em relação ao uso dos dados em poder da empresa em que trabalha busca então o Controlador e lhe pergunta se sua percepção sobre os princípios da LGPD está correta. O que apresenta a contrariedade em relação aos princípios previstos Lei Geral de Proteção de Dados (LGPD).',
    correctOption: 3,
    options: const {
      1: 'Adequação: realização do tratamento para propósitos legítimos, específicos, explícitos e informados ao titular, sem possibilidade de tratamento posterior de forma incompatível com essas finalidades.',
      2: 'Qualidade dos dados: garantia, aos titulares, de informações claras, precisas e facilmente acessíveis sobre a realização do tratamento e os respectivos agentes de tratamento, observados os segredos comercial e industrial.',
      3: 'Responsabilização e prestação de contas: demonstração, pelo agente, da adoção de medidas eficazes e capazes de comprovar a observância e o cumprimento das normas de proteção de dados pessoais e, inclusive, da eficácia dessas medidas.',
      4: 'Finalidade: compatibilidade do tratamento com os objetivos informados ao titular, de acordo com o contexto do tratamento.'
    },
    scoreMap: const {},
  ),
  5: DraggableCardWidget(
      character: 'lib/assets/people/LGPD-Morena.svg',
      question:
          'Um de seus funcionários que trabalha em um de seus negócios que é um parque de diversões infantil desses de shopping onde os pais deixam os filhos e buscam posteriormente, traz a seguinte questão: Poderia a empresa coletar o nome, idade e telefone com uma criança no qual está no parque para se cadastrar em um jogo online novo a ser implementado no parque e que também garante juntamente o cadastro a um sistema de descontos de uma loja de brinquedos parceira do parque?',
      correctOption: 1,
      options: const {
        1: 'Não, o tratamento de dados pessoais de crianças deverá ser realizado com o consentimento específico e em destaque dado por pelo menos um dos pais ou pelo responsável legal.',
        2: 'Sim, por se tratar de uma situação para participação de uma atividade no parque e se tratar de um desconto que trará vantagem para a criança e os pais, é permitido a coleta dos dados mencionados.',
        3: 'Somente a coleta para o sistema de descontos seria permitida sem o consentimento por ser vantajosa a criança, pois não devem ser condicionados a participação dos titulares (criança) em jogos, aplicações de internet ou outras atividades ao fornecimento de informações pessoais.',
        4: 'Na situação mencionada o consentimento dado pelos pais é indispensável e não necessita ser verificado pelo controlador por meio de esforços razoáveis para verificar sua veracidade, consideradas as tecnologias disponíveis.'
      },
      scoreMap: const {}),
};

Map<int, DraggableCardWidget> initialCardsRomana = {
  6: DraggableCardWidget(
    character: 'lib/assets/people/LGPD-Ruiva.svg',
    question:
        'O controlador deverá indicar encarregado pelo tratamento de dados pessoais, no qual fica encarregado das seguintes funções:',
    correctOption: 1,
    options: const {
      1: 'Aceitar reclamações e comunicações dos titulares, prestar esclarecimentos e adotar providências, receber comunicações da autoridade nacional e adotar providências, orientar os funcionários e os contratados da entidade a respeito das práticas a serem tomadas em relação à proteção de dados pessoais, executar as demais atribuições determinadas pelo controlador ou estabelecidas em normas complementares.',
      2: 'Tomar decisões referentes ao tratamento de dados pessoais regras de acordo com seu modelo de negócios e seu legítimo interesse, em conformidade com a lei, sendo o detentor da ordem de verificação da aplicabilidade correta da LGPD.',
      3: 'Processar e gerenciar as informações de acordo com as regras estabelecidas pelo controlador, atuando na coleta de mais dados pessoais por meio de telecomunicação.',
      4: 'Responsável por documentar os processos de tratamento de dados pessoais que podem gerar riscos às liberdades civis e aos direitos fundamentais, bem como medidas, salvaguardas e mecanismos de mitigação de risco.'
    },
    scoreMap: const {},
  ),
  7: DraggableCardWidget(
    character: 'lib/assets/people/LGPD-Ruiva.svg',
    question:
        'Os dados pessoais serão eliminados após o término de seu tratamento, autorizada sua conservação, exceto para:',
    correctOption: 3,
    options: const {
      1: 'Cumprimento de obrigação legal ou regulatória pelo controlador.',
      2: 'Estudo por órgão de pesquisa, garantida, sempre que possível, a anonimização dos dados pessoais.',
      3: 'Transferência a terceiro que pode ser escolhido pelo controlador.',
      4: 'Uso exclusivo do controlador, vedado seu acesso por terceiro, e desde que anonimizados os dados.'
    },
    scoreMap: const {},
  ),
  8: DraggableCardWidget(
    character: 'lib/assets/people/LGPD-Ruiva.svg',
    question:
        'O titular dos dados pessoais tem direito a obter do controlador, em relação aos dados do titular por ele tratados, a qualquer momento e mediante requisição as seguintes informações exceto:',
    correctOption: 4,
    options: const {
      1: 'Confirmação da existência de tratamento.',
      2: 'Correção de dados incompletos, inexatos ou desatualizados.',
      3: 'Anonimização, bloqueio ou eliminação de dados desnecessários, excessivos ou tratados em desconformidade com o disposto na LGPD.',
      4: 'Acesso não só aos seus dados pessoais, mas como também ao de outras pessoas incluídas no tratamento.'
    },
    scoreMap: const {},
  ),
  9: DraggableCardWidget(
    character: 'lib/assets/people/LGPD-Ruiva.svg',
    question: 'Quem pode ser e quais as funções do controlador?',
    correctOption: 2,
    options: const {
      1: 'Pessoa natural ou jurídica, de direito público ou privado, que realiza o tratamento de dados pessoais em nome de uma empresa ou pessoa.',
      2: 'Pessoa natural ou jurídica, de direito público ou privado, a quem competem as decisões referentes ao tratamento de dados pessoais.',
      3: 'Pessoa natural a quem se referem os dados pessoais que são objeto de tratamento.',
      4: 'Pessoa indicada pelo controlador e operador para atuar como canal de comunicação entre o controlador, os titulares dos dados e a Autoridade Nacional de Proteção de Dados (ANPD).'
    },
    scoreMap: const {},
  ),
  10: DraggableCardWidget(
    character: 'lib/assets/people/LGPD-Ruiva.svg',
    question: 'O que são dados anonimizados?',
    correctOption: 1,
    options: const {
      1: 'Dado relativo ao titular que não possa ser identificado, considerando a utilização de meios técnicos razoáveis e disponíveis na ocasião de seu tratamento.',
      2: 'Conjunto estruturado de dados pessoais, estabelecido em um ou em vários locais, em suporte eletrônico ou físico.',
      3: 'Dado pessoal sobre origem racial ou étnica, convicção religiosa, opinião política, filiação a sindicato ou a organização de caráter religioso, filosófico ou político, dado referente à saúde ou à vida sexual, dado genético ou biométrico, quando vinculado a uma pessoa natural.',
      4: 'Toda operação realizada com dados pessoais, como as que se referem a coleta, produção, recepção, classificação, utilização, acesso, reprodução, transmissão, distribuição, processamento, arquivamento, armazenamento, eliminação, avaliação ou controle da informação, modificação, comunicação, transferência, difusão ou extração.'
    },
    scoreMap: const {},
  ),
};

DraggableCardWidget welcomeCassandra = DraggableCardWidget(
  character: 'lib/assets/people/LGPD-Morena.svg',
  question:
      'Olá! Posso ver que está disciplinado no seu progresso, veio em busca de mais conhecimento? Está pronto para rodadas de conhecimento?',
  correctOption: -1,
  options: const {
    1: 'Acertou na mosca!',
    2: 'Com toda certeza!',
    3: 'Tenho pressa para me tornar o novo rei!',
    4: 'Quem não gostaria de se tornar um grande rei?'
  },
  scoreMap: const {},
);

DraggableCardWidget welcomeRomana = DraggableCardWidget(
  character: 'lib/assets/people/LGPD-Ruiva.svg',
  question:
      'Bem vindo! Fico muito contente em saber que veio em busca de novos conhecimentos! Está preparado para rodadas de conhecimento?',
  correctOption: -1,
  options: const {
    1: 'Conhecimento nunca é demais!',
    2: 'Tenho uma missão e irei cumpri-la',
    3: 'Adoro este local!',
    4: 'Onde mais se não aqui para eu conseguir terminar minha missão?'
  },
  scoreMap: const {},
);

Map<int, DraggableCardWidget> allCards = {
  ...initialCardsCassandra,
  ...initialCardsRomana
};

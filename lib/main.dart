// TRABALHO FINAL
// Por Izabela Leme e João Pretto

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyAppi extends StatefulWidget {
  @override
  _Cadastro createState() => _Cadastro();
}

class Anime {
  String nome;
  String genero;
  String foto;
  String anolancamento;
  String episodios;
  //String sinopse;

  Anime(
    this.nome,
    this.genero,
    this.foto,
    this.anolancamento,
    this.episodios,
    /*this.sinopse*/
  );
}

//Primeira tela
class MyApp extends StatelessWidget {
  final List<Anime> _animelist = [
    new Anime(
        'Naruto',
        'Ação, Artes Marciais, Aventura, Comédia, Shounen, Superpoder',
        'https://4icdn.com/?src=img/animes/qzp3-large.jpg&w152',
        '2002',
        '700'),
    //'Naruto Uzumaki é um menino que vive em Konohagakure no Sato ou simplesmente Konoha ou Vila Oculta da Folha, a vila ninja do País do Fogo. Quando ainda bebê, Naruto teve aprisionada em seu corpo a Kyuubi no Youko por Minato Namikaze (quarto Hokage, e seu pai), com a finalidade de salvar a Vila da Folha. Desde então, Naruto é visto por muitas pessoas como um monstro, não só pelos familiares das pessoas mortas pela Kyuubi, mas também por pessoas que não toleram suas brincadeiras, já que o mesmo é extremamente hiperativo, incompreendido e solitário. Naruto sonha em se tornar o Hokage de sua vila, um ninja poderoso e respeitado, para assim poder ser reconhecido por todos. Ele entra na academia ninja, onde sofre com as notas baixas, mas é ajudado por seu professor, Iruka Umino, que posteriormente se torna seu amigo. Consegue finalmente se tornar Gennin, e a partir daí passa a ser ensinado por um Jounin, Kakashi Hatake, e forma uma equipe com Sasuke Uchiha (que no começo não se dão bem) e Sakura Haruno, sua grande paixão.'),
    new Anime('Sword Art Online', 'Ação, Aventura, Fantasia, Jogos, Romance',
        'https://4icdn.com/?src=img/animes/ZWBP-large.jpg&w152', '2012', '25'),
    //'No ano de 2022, a Realidade Virtual Massive Multiplayer RPG Online (VRMMORPG), Sword Art Online (SAO), é lançado. Com o equipamento Nerve Gear, um capacete de realidade virtual que estimula no usuário cinco sentidos através de seu cérebro, os jogadores podem experimentar e controlar seus personagens no jogo com suas mentes. Em 6 de novembro de 2022, todos os jogadores ao entrar pela primeira vez, descobrem que eles são incapazes de sair. Eles são então informados por Kayaba Akihiko, o criador do SAO, que se eles desejam ser livres, eles devem chegar ao 100 º andar da torre do jogo e derrotar o chefe final. No entanto, se os seus avatares morrerem no jogo, seus corpos também morrerão no mundo real. A história segue com Kirito, um jogador habilidoso, que está determinado a vencer o jogo. Conforme o jogo avança, Kirito eventualmente se torna amigo de uma jogadora chamada Asuna que se torna sua parceira. Após a dupla descobrir a identidade do avatar Kayaba em SAO, eles enfrentam e derrotam, libertando-se e os outros jogadores do jogo. Ao voltar para o mundo real, Kirito descobre que Asuna e um pequeno grupo de jogadores SAO estão presos em outra VRMMORPG chamado Alfheim Online (ALO). Sua prisão em ALO é parte de um plano concebido por Nobuyuki Sugo para subjugar Asuna e casar com ela, em uma tentativa de assumir a empresa de sua família. Ajudado por velhos amigos de SAO juntamente com novos aliados, os planos de Kirito frustra Nobuyuki e finalmente se reúne com Asuna no mundo real. Logo depois, Kirito desempenha um outro VRMMORPG chamado Gun Gale Online (GGO) para investigar a misteriosa ligação entre o jogo e as mortes que ocorrem no mundo real. Ele finalmente descobre que os culpados são ex-membros de uma guilda assassina que já tinha encontrado em SAO. Depois de resolver os assassinatos em GGO, Kirito é recrutado para ajudar no desenvolvimento de um jogo de state-of-the-art, UnderWorld (UW), que tem uma interface que é muito mais realista e complexa do que a dos jogos anteriores que ele tinha jogado. Em UW, o fluxo do tempo procede milhares de vezes mais rápido do que no mundo real. No entanto, Kirito acaba caindo para uma armadilha e acorda dentro do jogo, incapaz de sair ele começa a procurar um caminho de volta para a realidade.'),
    new Anime(
        'Boku no Hero Academia',
        'Ação, Aventura, Comédia, School, Shounen, Superpoder',
        'https://4icdn.com/?src=img/animes/B1aJ-large.jpg&w152',
        '2016',
        '25'),
    //'O que é um herói? Para Midoriya Izuku, a resposta dessa pergunta sempre foi simples: "Tudo que eu quero ser!" E quem é o maior herói? Bem, o lendário All Might (Todo Poderoso), é claro. All Might é o herói número um e também o "Símbolo da Paz" mundial. Nem mesmo em seus sonhos mais loucos Izuku poderia imaginar que logo seu caminho cruzaria o de seu herói de infância. Em Boku no Hero Academia o status é governado pelas "Individualidades", superpoderes singulares que se desenvolvem na infância. Mas infelizmente, o viciado em heróis, Midoriya "Deku" Izuku nunca teve uma Individualidade. Isto é, até conhecer All Might, o maior herói de todos. A transformação de sonhador em herói de Izuku começa na Academia U.A., a melhor escola de treinamento de heróis do Japão. Izuku fica eufórico quando é aceito para essa academia de prestígio, especialmente quando descobre que All Might é um dos professores. Que surpresas essa academia poderosa aguarda? Izuku será capaz de acompanhar os colegas de classe de elite?'),
    new Anime(
        'Re: Zero Kara Hajimeru Isekai Seikatsu',
        'Drama, Fantasia, Psicológico, Thriller',
        'https://4icdn.com/?src=img/animes/Bn2T-large.jpg&w152',
        '2016',
        '26'),
    //'O aluno colegial Natsuki Subaru foi invocado de repente para outro mundo enquanto voltava da loja de conveniência. Com a maior crise de sua vida sendo levado a outro mundo e sem sinal algum de quem o tenha invocado, as coisas ficam piores ainda quando ele é atacado. Mas então ele é salvo por uma misteriosa garota de cabelos prateados com um gato fada e Subaru se junta a ela para retribuir o favor. Quando finalmente conseguem uma pista, Subaru e a garota são atacados e mortos por alguém. Subaru então acorda no lugar que foi invocado e percebe que ganhou a habilidade "Retorno Por Morte" e se tornou um garoto inútil que só tem a habilidade de voltar no tempo morrendo. Apesar do desespero, ele pode salvar a garota da morte certa?'),
    new Anime(
        'Boku Dake Ga Inai Machi',
        'Mistério, Psicológico, Seinen, Sobrenatural',
        'https://4icdn.com/?src=img/animes/pMia-large.jpg&w152',
        '2016',
        '12'),
    //'O esforçado autor de mangá Fujinuma Satoru é assolado pelo medo de se expressar. No entanto, ele tem a habilidade sobrenatural de ser obrigado a evitar mortes e catástrofes sendo mandado de volta no tempo antes do incidente ocorrer, repetindo o tempo até que o acidente seja evitado. Certo dia, ele se envolve num acidente que o incrimina como assassino. Desesperado para salvar a vítima, ele volta no tempo apenas para se ver como um aluno do fundamental um mês antes de sua colega de classe Hinazuki Kayo desaparecer. Satoru agora embarca numa nova busca: salvar Kayo e resolver o mistério de seu desaparecimento.'),
    new Anime(
        'Dororo',
        'Ação, Aventura, Demônio, Histórico, Shounen, Sobrenatural',
        'https://4icdn.com/?src=img/animes/47766-large.jpg&w152',
        '2019',
        '24'),
    //'No ano de 1970 após a guerra entre Onin e Bunmei. A história começa na península de Nota no distrito de Hokuriku. O protagonista (Hyakkimaru), no qual não tem 48 partes do corpo, conseguiu um corpo falso e vai em busca de eliminar 48 monstros que foram feitos de seu corpo para recuperar suas partes perdidas.')
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AnimationTV',
      home: Scaffold(
        drawer: NavDrawer(), //menu
        appBar: AppBar(
          title: Text('AnimationTV'),
        ),
        body: ListView.builder(
            //Monta a lista automaticamente
            itemCount: _animelist.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading: CircleAvatar(
                  //Circulo
                  backgroundImage: NetworkImage(_animelist[index].foto),
                ),
                //leading: Icon(Icons.home), //Em vez da img, coloca um icone
                title: Text('${_animelist[index].nome}'),
                subtitle: Text('${_animelist[index].anolancamento}'),
                dense: false,
                trailing: Icon(Icons.keyboard_arrow_right),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Animes(anime: _animelist[index])),
                  );
                },
              );
            }),
      ),
    );
  }
}

//Segunda tela
class Animes extends StatelessWidget {
  final Anime anime;
  Animes({Key key, @required this.anime}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detalhes'),
      ),
      body: Container(
        color: Colors.grey,
        child: new Column(
          children: [
            new Container(
              width: 400, //tamanho
              padding: new EdgeInsets.all(10.0), //margem
              child: Center(
                child: Image.network(
                  anime.foto,
                ),
              ),
            ),
            new Container(
              //Nome
              padding: new EdgeInsets.all(10.0),
              child: Center(
                child: Text(anime.nome,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25) //cor e fonte da letra
                    ),
              ),
            ),
            new Container(
              //Gênero
              padding: new EdgeInsets.all(10.0),
              child: Center(
                child: Text(anime.genero),
              ),
            ) /*,
            new Container(
              //Sinopse
              padding: new EdgeInsets.all(10.0),
              child: Center(
                child: Text(anime.sinopse),
              ),
            )*/
          ],
        ),
      ),
    );
  }
}

//Terceira tela
class _Cadastro extends State<MyAppi> {
  GlobalKey<FormState> _key = new GlobalKey();
  bool _validate = false;
  String nome, email, senha, celular;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('Cadastro'),
        ),
        body: new SingleChildScrollView(
          child: new Container(
            margin: new EdgeInsets.all(15.0),
            child: new Form(
              key: _key,
              autovalidate: _validate,
              child: _formUI(),
            ),
          ),
        ),
      ),
    );
  }

  //Formulário
  Widget _formUI() {
    return new Column(
      children: <Widget>[
        new TextFormField(
          decoration: new InputDecoration(hintText: 'Nome Completo'),
          maxLength: 40,
          validator: _validarNome,
          onSaved: (String val) {
            nome = val;
          },
        ),
        new TextFormField(
            decoration: new InputDecoration(hintText: 'Email'),
            keyboardType: TextInputType.emailAddress,
            maxLength: 40,
            validator: _validarEmail,
            onSaved: (String val) {
              email = val;
            }),
        new TextFormField(
            decoration: new InputDecoration(hintText: 'Senha'),
            maxLength: 8,
            validator: _validarSenha,
            onSaved: (String val) {
              senha = val;
            }),
        new TextFormField(
            decoration: new InputDecoration(hintText: 'Celular'),
            keyboardType: TextInputType.phone,
            maxLength: 10,
            validator: _validarCelular,
            onSaved: (String val) {
              celular = val;
            }),
        new SizedBox(height: 15.0),
        new RaisedButton(
          onPressed: _sendForm,
          child: new Text('Enviar'),
        )
      ],
    );
  }

  String _validarNome(String value) {
    String patttern = r'(^[a-zA-Z ]*$)';
    RegExp regExp = new RegExp(patttern);
    if (value.length == 0) {
      return "Informe o nome";
    } else if (!regExp.hasMatch(value)) {
      return "O nome deve conter caracteres de a-z ou A-Z";
    }
    return null;
  }

  String _validarCelular(String value) {
    String patttern = r'(^[0-9]*$)';
    RegExp regExp = new RegExp(patttern);
    if (value.length == 0) {
      return "Informe o celular";
    } else if (value.length != 9) {
      return "O celular deve ter 9 dígitos";
    } else if (!regExp.hasMatch(value)) {
      return "O número do celular so deve conter dígitos";
    }
    return null;
  }

  String _validarSenha(String value) {
    String patttern = r'(^[a-zA-Z]*[0-9]*$)';
    RegExp regExp = new RegExp(patttern);
    if (value.length == 0) {
      return "Digite sua senha";
    } else if (value.length != 8) {
      return "A senha deve conter 8 dígitos.";
    } else if (!regExp.hasMatch(value)) {
      return "A senha deve conter letras e dígitos.";
    }
    return null;
  }

  String _validarEmail(String value) {
    String pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regExp = new RegExp(pattern);
    if (value.length == 0) {
      return "Informe o Email";
    } else if (!regExp.hasMatch(value)) {
      return "Email inválido";
    } else {
      return null;
    }
  }

  _sendForm() {
    if (_key.currentState.validate()) {
      // Sem erros na validação
      _key.currentState.save();
      print("Nome $nome");
      print("Celular $celular");
      print("Email $email");
      print("Senha $senha");
    } else {
      // erro de validação
      setState(() {
        _validate = true;
      });
    }
  }
}

//Classe que monta o menu
class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text(
              'Opções',
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
            decoration: BoxDecoration(color: Colors.blue),
          ),
          ListTile(
            leading: Icon(Icons.input),
            title: Text('Cadastro'),
            onTap: () {
              /*
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SecondRoute()),
              );*/
            },
          ),
          ListTile(
            leading: Icon(Icons.verified_user),
            title: Text('Adicionar lembrete'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(Icons.border_color),
            title: Text('Feedback'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Logout'),
            onTap: () => {Navigator.of(context).pop()},
          ),
        ],
      ),
    );
  }
}

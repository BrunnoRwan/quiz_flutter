class Quiz {
  String? pergunta;
  int? respostaCorreta;
  List<String>? respostas;

  Quiz({this.pergunta, this.respostaCorreta, this.respostas});

  Quiz.fromJson(Map<String, dynamic> json) {
    pergunta = json['pergunta'];
    respostaCorreta = json['resposta_correta'];
    respostas = json['respostas'].cast<String>();
  }
}

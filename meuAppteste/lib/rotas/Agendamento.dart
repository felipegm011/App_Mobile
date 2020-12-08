class Agendamento {
  final String nome;
  final String curso;
  final String data;
  final String matricula;
  final String assunto;

  Agendamento(
    this.nome,
    this.curso,
    this.data,
    this.matricula,
    this.assunto,
  );
  @override
  String toString() {
    return 'Usuarios{ nome: $nome, scurso:  data: $data, matricula: $matricula, assunto: $assunto}';
  }
}
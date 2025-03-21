import 'package:flutter/material.dart';
import 'package:zyro_finance/domain/entities/course.dart';

class CourseItem extends StatelessWidget {
  final Course course;
  final VoidCallback onTap;

  const CourseItem({
    required this.course,
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none, // Permite que o botão fique para fora do card
      children: [
        Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
          margin: const EdgeInsets.symmetric(vertical: 20.0), // Maior espaçamento entre os cards
          decoration: BoxDecoration(
            color: Colors.white,
            //borderRadius: BorderRadius.circular(8.0),
           /* boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 1,
                blurRadius: 5,
                offset: const Offset(0, 2),
              ),
            ],*/
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                course.title,
                style: const TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepOrange, // Título laranja
                ),
              ),
              const SizedBox(height: 10.0),
              Text(
                course.description,
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey[800], // Cinza escuro para o texto
                ),
              ),
              const SizedBox(height: 40.0), // Mais espaço para não cobrir o conteúdo
            ],
          ),
        ),

        // Botão sobreposto à direita
        StartButton(onTap: onTap),
      ],
    );
  }
}

// Componente de botão dentro do mesmo arquivo
class StartButton extends StatelessWidget {
  final VoidCallback onTap;

  const StartButton({
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: -5, // Sai um pouco do card
      right: -10, // Colado na direita, saindo um pouco do card
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          
          foregroundColor: Colors.black, // Cor do texto
          backgroundColor: Colors.deepOrange, // Cor de fundo
          padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 5.0),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.0),
              bottomLeft: Radius.circular(20.0),
              topRight: Radius.circular(8.0),
              bottomRight: Radius.circular(8.0),
            ),
          ),
          //elevation: 5, // Sombra para destacar
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min, // Mantém o tamanho ajustado ao conteúdo
          children: [
            // Círculo de status antes do texto
            Container(
              width: 30,
              height: 30,
              margin: const EdgeInsets.only(right: 10), // Espaço entre o círculo e o texto
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.green, // Cor externa verde
                  width: 5.0, // Espessura da borda
                ),
                color: Colors.black, // Centro sempre preto
              ),
            ),

            const Text("Iniciar"),
          ],
        ),
      ),
    );
  }
}

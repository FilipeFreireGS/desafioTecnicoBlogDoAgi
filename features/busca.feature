#language:pt

Funcionalidade: Campo de busca do Blog do AGI

Cenário: "<id>": Realizar uma busca que retorna resultados
  Dado que o usuário está na página institucional do Blog do AGI
  E que ele clica no campo de busca
  Quando o usuário digitar "<texto>" no campo de busca
  E pressionar a tecla enter do teclado 
  Então artigos relacionados à palavra pesquisada são exibidos

  Exemplos:
      |id        | texto        | 
      | CT01-001 | investimento |
      | CT01-002 | tecnologia   |
      | CT01-003 | energia      |
      | CT01-004 | empréstimo   |
      | CT01-005 | conta        |
      | CT01-006 |              | 
      # Não sei se o resultado do cenário CT01-006 (busca sem preencher valor) está correto. Atualmente ele retorna valores. Necessário verificar a documentação de requisitos de negócio para entender qual o comportamento correto.


Cenário: "<id>": Realizar uma busca que não retorna resultados
  Dado que o usuário está na página institucional do Blog do AGI
  E que ele clica no campo de busca
  Quando o usuário digitar "<texto>" no campo de busca
  E pressionar a tecla enter do teclado 
  Então artigos relacionados à palavra pesquisada não são exibidos

  Exemplos:
      |id          | texto        | 
      | CT02-001   | xpto         |

Cenário: "<id>": Verifica responsividade da tela ("<dispositivo>")
  Dado que o usuário está na página institucional do Blog do AGI
  E que eu ajusto o tamanho da janela para <altura>x<largura>
  E que ele clica no campo de busca
  Quando o usuário digitar "<texto>" no campo de busca
  E pressionar a tecla enter do teclado 
  Então artigos relacionados à palavra pesquisada são exibidos

  Exemplos:
      |id        | altura | largura | texto        | dispositivo   |
      | CT03-001 | 1024   | 926     | investimento | laptop 1024px |         
      | CT03-002 | 768    | 617     | investimento | tablet 768px  |
      # Cenario acima identificou um erro. O ícone da lupa desaparece quando a tela é diminuída horizontalmente.
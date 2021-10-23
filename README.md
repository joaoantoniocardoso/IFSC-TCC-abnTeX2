# IFSC-TCC-abnTeX2 - Modelo LaTeX do TCC do IFSC

Este repositório é um modelo (template) de trabalhos de conclusão
de curso (monografias ou dissertações) para o Instituto Federal de Educação Ciência e Tecnologia de Santa Catarina.

Feito para atender as normas e regulamentos estabelecidos pelo IFSC, em seu manual
de Julho de 2019, 4ª Edição, usando a classe [abnTeX2](https://github.com/abntex/abntex2).

# Como usar?
Este repositório está disponível como um template no github. Para criar um
repositório a partir de um template, [ler aqui](https://docs.github.com/pt/github/creating-cloning-and-archiving-repositories/creating-a-repository-on-github/creating-a-repository-from-a-template).

1. Para criar o seu repositório você pode optar por:
   * criar um repostório a partir desse template
   * usar como um submodulo no seu repositório Git do seu TCC já iniciado
   * é possível também baixar como .zip, mas perderá o vínculo com o Git, portanto, prefira os métodos acima

2. Para editar e escrever o seu TCC, você pode:
   * compilar na sua máquina (testado apenas com a distribuição [TeXLive](https://www.tug.org/texlive/), mas deve funcionar com [MiKTeX](https://miktex.org/) também)
   * importar / sincronizar o seu repositório com algum editor web como o [Overleaf](https://www.overleaf.com). Para saber como importar, [ler aqui](https://pt.overleaf.com/learn/how-to/Using_Git_and_GitHub)

# Como contribuir?
 * Caso tenha problemas, dúvidas ou sugestões, [crie uma Issue](https://github.com/joaoantoniocardoso/IFSC-TCC-abnTeX2/issues/new/choose).
 * Se deseja adicionar sua modificação, mande um PR a partir do seu fork, ou um patch em uma issue.

# Histórico e Mudanças
Este repositório é um fork do [repositório do diesson](https://github.com/diesson/Modelo-de-TCC-Engenharia-eletronica),
que por sua vez é um fork com melhorias e simplificações a partir do
[repositório do bydansouza](https://github.com/bydansouza/ifscTCC), juntamente com partes dos TTCs do [flaviofaveri](https://github.com/flaviofaveri) e do [gutohoffmann](https://github.com/gutohoffmann).

As últimas mudanças foram:
 * Os pacotes matemáticos foram alterados a fim de obter uma qualidade melhor
   nas renderizações de equações matriciais ou que contem uderbrace / overbrace.
 * Esta versão foi atualizada para trabalhar com Siunitx v3
 * Todo o conteúdo textual original foi removido, no lugar, foi adicionado um
 conteúdo guia, retirado do [Manual de Comunicação Científica (edição 2016)](https://www.ifsc.edu.br/documents/30725/188971/IFSC_manual_comunicacao_cientifica_maio_2016.pdf/58c017ce-c9e1-e36f-03b7-ea26b58f7d97).
   Para um trabalho completo como referência, ver os [repositório do Diesson](https://github.com/diesson/Modelo-de-TCC-Engenharia-eletronica) e o [TCC da anabdck](https://github.com/anabdck/tcc).
 * Foi adicionado um .gitignore para evitar arquivos desnecessários no repositório

# Contribuidores
 * [Letícia de Oliveira Nunes (lele1991)](https://github.com/lele1991)
 * [Igor Debastiani (gdinn)](https://github.com/gdinn)
 * [João Antônio Cardoso (joaoantoniocardoso)](https://github.com/joaoanoniocardoso)
 * [Felipe Rodrigues Broering (BroeringFelipe)](https://github.com/BroeringFelipe)
 * [Ana Cláudia Banderchuk (anabdck)](https://github.com/anabdck)
 * [Diesson Stefano Allebrandt (diesson)](https://github.com/diesson)
 * [Daniel Henrique Camargo de Souza (bydansouza, o desenvolvedor da classe ifscTCC)](https://github.com/bydansouza)
 * [Augusto Hoffmann (gutohoffmann)](https://github.com/gutohoffmann)
 * [Flavio de Faveri (flaviofaveri)](https://github.com/flaviofaveri)

# Exemplos
Como referência sobre a utilização, segue uma lista de trabalhos anteriores e abertos no Github:
* https://github.com/anabdck/tcc
* https://github.com/diesson/Modelo-de-TCC-Engenharia-eletronica
* https://github.com/bydansouza/ifscTCC

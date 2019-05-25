#!/bin/bash



# ESPAÇO PRO LAYOUT
echo "

	 "
# BUSCA UMA FRASE ALEATORIA DO AQUIVO "frases.txt"
while i=1
do
	linha=$RANDOM
  if [ $linha -ge 1 -a $linha -le 8 ]
  then
  	fraseEscolhida=$( cat frases.txt | head -n $linha | tail -n 1 )
  	echo "	"$fraseEscolhida
    break
  fi
done

# MOSTRA A DATA ATUAL
echo "
"
data=$(date)
echo "DATA DE HOJE:  "$data


# MOSTRAS OS ARQUIVOS DA PASTA DOWNLOAD
echo "
  Arquivos do diretório Download:
	"
cd /home/junior/Downloads && ls -ah



# MOSTRAS TODAS OS AQUIVOS DE MUSCIAS, IMAGENS E VIEDOS
echo "
  Todos os aquivos de Video,Audio e Imagem do PC:
	"
# VETORES DE EXTENÇÕES MAIS POPULARES
extencaoImagens=("jpeg" "jpg" "gif" "bmp" "png" "psd" "tiff" "exif" "raw" "webp")
extencaoAudios=("mp3" "aac" "ogg" "wma" "alac" "flac" "aiff" "cpm" "wav")
extencaoVideos=("mp4" "wmv" "avi" "flv" "mov" "rmvb" "mpeg" "mkv")


# MOSTRAS A IMAGENS
echo "
  Imagens:

"
for i in ${!extencaoImagens[@]};
do
	cd /home/junior/ && find . -name *.${extencaoImagens[$i]}
done

# MOSTRA OS VIDEOS
echo "
  Videos:

"
for i in ${!vector[@]};
do
	cd /home/junior/ && find . -name *.${vector[$i]}
done

# MOSTRA AS MUSICAS
echo "
  Músicas:

"
for i in ${!extencaoAudios[@]};
do
	cd /home/junior/ && find . -name *.${extencaoAudios[$i]}
done


# MEMORIA RAM
echo "
  Informações da memoria RAM:

"
free -h --giga

# DISCO RIGIDO
echo "
  Informações do Disco Rígido:

"
df -h

function historia_update()
  if parte <= 2 then
    function love.keypressed(key)
      if key == 'space' then
        parte = parte+1
      end
    end
  elseif parte > 4 and parte <= 11 then
    function love.keypressed(key)
      if key == 'space' then
        parte = parte+1
      end
    end
  elseif parte >= 14 and parte <= 19 then
    function love.keypressed(key)
      if key == 'space' then
        parte = parte+1
      end
    end
  elseif parte == 20 then
    function love.keypressed(key)
      if key == '1' or key == '2' then
        parte = 21 -- terceira fase
      end
    end
  elseif parte >= 23 and parte <= 24 then
    function love.keypressed(key)
      if key == 'space' then
        parte = parte+1
      end
    end
  end
end
function historia1_draw()
  if parte == 0 then
    love.graphics.print('Em um Beco qualquer, o jovem Drogado ouve uma lenda sobre a estátua de crack', x, y, r, sx, sy, ox, oy, kx, ky)
    love.graphics.print('E louco para saciar o seu desejo de ficar louco no crack, foi a procura dela',0,16)
    love.graphics.print('Seguindo pistas que o mesmo ouviu, Drogado chega a um lugar misterioso',0,32)
    love.graphics.print('Chegando perto avista um crackudo circulando a área, que logo depois o aborda',0,48)
  end
  if parte == 1 then
      love.graphics.print('Crackudo: Quem é você?',0,64)
  end
  if parte == 2 then
    love.graphics.print('Drogado: Eu sou Drogado e estou a procura da estátua de crack', x, 80, r, sx, sy, ox, oy, kx, ky)
  end
  if parte == 3 then
    love.graphics.print('Crackudo: Então você está atrás do meu tesouro? Então morra!',0,96)
    love.graphics.print('O que fazer? 1= Fugir / 2 = Lutar com o crackudo',0,112)
  end
end

function historia2_draw()
  if parte == 5 then
    love.graphics.print('Drogado: Ah, consegui matar aquele infeliz, o mapa me diz para ir para cá')
  end
  if parte == 6 then
    love.graphics.print('Depois de andar por corredores, Drogado avista outra área',0,16)
    love.graphics.print('Se aproximando dela Drogado foi impedido de continuar por um homem',0,32)
    love.graphics.print('Tal homem fedia e olhava com fúria para ele, até que ele falou:',0,48)
  end
  if parte == 7 then
  love.graphics.print('Homem: Então quer dizer que você matou o meu melhor cliente não foi?',0,64)
  end
  if parte == 8 then
    love.graphics.print('Drogado: Quem é você? E sim, matei ele por que me impediu de continuar minha busca',0,80)
  end
  if parte == 9 then
    love.graphics.print('Homem: Eu sou o traficante da região, e posso saber o que você procura?',0,96)
  end
  if parte == 10 then
  love.graphics.print('Drogado: Estou procurando a Estátua de Crack que dizem estar enterrada por aqui',0,112)
  end
  if parte == 11 then
  love.graphics.print('Traficante: Então você quer o nosso tesouro não é? Prepare-se para morrer',0,128)
  end
  if parte == 12 then
  love.graphics.print('Drogado: Pelo amor de Deus, até parece que estou num jogo, que negocio sem sentido',0,144)
  love.graphics.print('O que fazer? 1= Fugir / 2 = Lutar com o traficante',0,160)
  end
end

function historia3_draw()
  if parte == 14 then
    love.graphics.print('Esse mapa diz que devo seguir em rumo a essa direção')
  end
  if parte == 15 then
    love.graphics.print('Então depois de andar por mais um tempo, Drogado avista uma figura estranha',0,16)
    love.graphics.print('Drogado então reconhece a figura estranha que logo após o aborda',0,32)
  end
  if parte == 16 then
    love.graphics.print('fugura: PROERD É O PROGRAMA, PROERD É A SOLUÇÃO, LUTANDO CONTRA AS DROGAS, ENSINANDO A DIZER NÃO',0,48)
    love.graphics.print('figura: VOCÊ SABE QUEM EU SOU, NÃO SABE MACONHEIRO?',0,64)
  end
  if parte == 17 then
    love.graphics.print('Sim, o medo de todos os drogados estava na frente do jovem Drogado...',0,80)
    love.graphics.print('Drogado: Você é... O LEÃO DO PROERD',0,96)
  end
  if parte == 18 then
    love.graphics.print('Leão do PROERD: Exatamente, e eu sei que você está atrás da estátua de crack',0,112)
    love.graphics.print('Drogado: Como você sabe disso?',0,128)
  end
  if parte == 19 then
  love.graphics.print('Leão do PROERD: Por qual outro motivo você estaria aqui?',0,144)
  love.graphics.print('Leão do PROERD: Bem, você só irá conseguir ela por cima do meu cadáver',0,160)
  end
  if parte == 20 then
  love.graphics.print('Drogado: Beleza, já vi que isso é um jogo, mas dane-se, quer saber?',0,176)
  love.graphics.print('Drogado: A PELE DE UM LEÃO DEVE VALER MUITA MACONHA',0,192)
  love.graphics.print('O que fazer?',0,208)
  love.graphics.print('1: lutar conta o Leão do PROERD / 2: Se ferrou lek, vai ter que lutar contra ele, o Drogado ja tá decidido huehuehue',0,224)
  end
end

function historia4_draw()
  if parte == 22 then
  love.graphics.print('Então depois de todo esse esforço mútuo, drogado consegue sua estátua de crack')
  love.graphics.print('E depois de desenterrar ela, ele olha um bilhete, cujo nele dizia:',0,16)
  love.graphics.print('Se você conseguiu essa estátua então Parabéns, dentro dela há outro mapa',0,32)
  love.graphics.print('Nesse mapa há a localização dos 14 bis que Santos Dumont fumou, encontre essa erva e seja feliz',0,48)
  love.graphics.print('O que fazer? 1: Levar a estátua de crack / 2: Fumar que nem louco',0,64)
  end
  if parte == 23 then
  love.graphics.print('Depois de ler isso drogado que nem louco começou a fumar a estátua de crack, E ENTÃO...',0,80)
  end
  if parte == 24 then
  love.graphics.print('Ele morreu de overdose HUEHEUHUEHUEHUEHUEHEUHEUHEUEHUEHUEEU',0,96)
  end
end

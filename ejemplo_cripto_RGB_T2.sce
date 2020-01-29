clear
alfabeto='RGB';
alfabetos_de_cifrado=['BRG' 'GBR' 'RGB'];

//el alfabeto de descifrado está compuesto por permutaciones del anterior.
alfabetos_de_descifrado=['GBR' 'BRG' 'RGB'];
mensaje='RBBRBGGBBGGBRBBR';

function mensaje_cifrado=procesa(mensaje,alfabeto,alfabetos_de_cifrado)
   nca=length(alfabeto);
   n=length(mensaje);
   mensaje_cifrado='';
   for i=1:1:n
       caracter=part(mensaje,i);
       posicion=strindex(alfabeto,caracter);
       cifrado=1+modulo((i-1),nca);
       caracter_sustitutivo=part(alfabetos_de_cifrado(cifrado),posicion);
       mensaje_cifrado=mensaje_cifrado+caracter_sustitutivo;
   end
endfunction

mensaje_cifrado=procesa(mensaje,alfabeto,alfabetos_de_cifrado);
mensaje_recibido=procesa(mensaje_cifrado,alfabeto,alfabetos_de_descifrado);

if(strcmp(mensaje, mensaje_recibido)==0) then
    disp('Mensajes descifrado correctamente');
else
    disp('El mensaje recibido no coincide con el original');
end


disp('2.3');
disp('---');
mensajes_claros= [mensaje, '--', 'BGGBGRRGGRRGBGGB', '--', 'BRBBRGRRBRBBBRBB'];
mensajes_cifrados= [mensaje_cifrado, 'RBBRBGGBBGGBRBBR', '--', 'BGGBGRRGGRRGBGGB', '--'];

//se completa la tabla completando los vectores anteriores
mensajes_cifrados(1,3)= procesa( mensajes_claros(1,3), alfabeto,alfabetos_de_cifrado);
mensajes_cifrados(1,5)= procesa( mensajes_claros(1,5), alfabeto,alfabetos_de_cifrado);

mensajes_claros(1,2)= procesa( mensajes_cifrados(1,2), alfabeto,alfabetos_de_descifrado);
mensajes_claros(1,4)= procesa( mensajes_cifrados(1,4), alfabeto,alfabetos_de_descifrado);

disp("mensajes claros:");
disp(mensajes_claros);
disp("mensajes cifrados:");
disp(mensajes_cifrados);

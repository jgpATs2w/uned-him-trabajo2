clear
alfabeto='RGB';
alfabetos_de_cifrado=['BRG' 'GBR' 'RGB'];
alfabetos_de_descifrado=['GBR' 'BRG' 'RGB'];
mensaje='RBBRBGGBBGGBRBBR';

function mensaje_cifrado=cifrado_PA(mensaje,alfabeto,alfabetos_de_cifrado)
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

function mensaje=descifrado_PA(mensaje_cifrado,alfabeto,alfabetos_de_cifrado)
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

mensaje_cifrado=cifrado_PA(mensaje,alfabeto,alfabetos_de_cifrado);
mensaje_recibido=descifrado_PA(mensaje_cifrado,alfabeto,alfabetos_de_descifrado);

if(strcmp(mensaje, mensaje_recibido)==0) then
    disp('Mensajes descifrado correctamente');
else
    disp('El mensaje recibido no coincide con el original');
end


disp('2.3');
disp('---');
mensajes_claros= [mensaje, '', 'BGGBGRRGGRRGBGGB', '', 'BRBBRGRRBRBBBRBB'];
mensajes_cifrados= [mensaje_cifrado, 'RBBRBGGBBGGBRBBR', '', 'BGGBGRRGGRRGBGGB', ''];

mensajes_cifrados(1,3)= cifrado_PA( mensajes_claros(1,3), alfabeto,alfabetos_de_cifrado);
mensajes_cifrados(1,5)= cifrado_PA( mensajes_claros(1,5), alfabeto,alfabetos_de_cifrado);

disp(mensajes_cifrados);

disp(strcmp(mensajes_cifrados, mensajes_claros));

